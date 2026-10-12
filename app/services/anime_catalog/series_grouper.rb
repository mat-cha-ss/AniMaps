module AnimeCatalog
    class SeriesGrouper
        def initialize(mal_id:)
            @mal_id = mal_id.to_i
        end

        def call
            candidates = AnimeCatalog::SeriesMatcher.new(mal_id: @mal_id).call
            return nil if candidates.empty?
            mal_ids = candidates.filter_map(&:mal_id).uniq
            #Include the uploaded anime even if the matcher returns no candidates.
            mal_ids << @mal_id unless mal_ids.include?(@mal_id)
            ActiveRecord::Base.transaction do
                existing_animes = Anime.where(mal_id: mal_ids).to_a
                confirmed_series = existing_animes.filter_map(&:series).select { |series| series.grouping_status == "confirmed" }.uniq(&:id)
                #Never combine candidates that belong to a different confirmed series.
                return nil if confirmed_series.size > 1
                suggested_series = existing_animes.filter_map(&:series).select { |series| series.grouping_status == "suggested" }.uniq(&:id)
                #Don't automatically merge multiple suggested groups.
                return nil if suggested_series.size > 1
                series = confirmed_series.first || suggested_series.first
                #Only create a new series when at least 2 candidates have matching titles.
                if series.nil?
                    return nil if candidates.size < 2
                    series = Series.create!(grouping_status: "suggested")
                    create_series_title(series, candidates.first.title)
                end
                candidates.each do |catalog|
                    next unless catalog.mal_id
                    anime = AnimeCatalog::Resolver.new(mal_id: catalog.mal_id).call
                    next unless anime
                    #Never move an anime from an existing series.
                    next if anime.series_id.present?
                    anime.update!(series_id: series.id)
                end
                series
            end
        end

        private

        def create_series_title(series, title)
            title_type = TitleType.find_by!(code: "official")
            SeriesTitle.create!(
                series_id: series.id,
                title_type_id: title_type.id,
                title: title,
                language: "en"
            )
        end
    end
end