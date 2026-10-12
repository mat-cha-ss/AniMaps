module AnimeCatalog
    class SeriesMatcher
        #Conservative suffixes for initial version.
        SEASON_SUFFIX = /\s+(?:(?:season\s*\d+|\d+(?:st|nd|rd|th)\s+season) | (?:[2-9]|ii|iii|iv))\z/ix

        def initialize(mal_id:)
            @mal_id = mal_id
        end

        def call
            catalog = AnimeCatalogEntry.find_by(mal_id: @mal_id)
            return [] unless catalog&.title.present?
            base_title = normalize(catalog.title)
            # Avoid grouping on extremely short names.
            return [catalog] if base_title.length < 8
            prefix = ActiveRecord::Base.sanitize_sql_like(base_title)
            candidates = AnimeCatalogEntry.where("title ILIKE ?", "#{prefix}%").limit(100).to_a
            # Accept the base title itself or titles with recognizable continuation, rather than arbitrary shared prefixes.
            candidates.select do |candidate|
                next false if candidate.title.blank?
                candidate_base = normalize(candidate.title)
                candidate_base.casecmp?(base_title) || candidate.title.match?(/\A#{Regexp.escape(base_title)}(?:'s|:| - )/i)
            end
        end

        private

        def normalize(title)
            title.strip.gsub(SEASON_SUFFIX, "").strip
        end
    end
end