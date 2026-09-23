module Anilist
  class SeriesImporter
    def initialize(mal_id:)
      @mal_id = mal_id
    end

    def call
      anime_list = Anilist::SeriesFinder.new(mal_id: @mal_id).call

      return if anime_list.empty?

      ActiveRecord::Base.transaction do
        series = find_or_create_series(anime_list)

        anime_list.each do |anime_data|
          import_anime(anime_data, series)
        end

        series
      end
    end

    private

    def find_or_create_series(anime_list)
      # First check whether one of these anime already belongs to an AniMaps series.
      existing_anime = Anime
        .where(mal_id: anime_list.filter_map { |anime| anime["idMal"] })
        .where.not(series_id: nil)
        .first

      return existing_anime.series if existing_anime

      Series.create!
    end

    def import_anime(anime_data, series)
      mal_id = anime_data["idMal"]

      # For now, skip entries that don't have a MAL ID.
      return if mal_id.nil?

      anime = Anime.find_or_initialize_by(mal_id: mal_id)

      anime.series = series
      anime.anilist_id = anime_data["id"]

      if anime.new_record? && anime_data["startDate"]
        anime.release_date = build_date(anime_data["startDate"])
      end

      anime.save!

      import_titles(anime, anime_data)
    end

    def import_titles(anime, anime_data)
      titles = anime_data["title"]

      add_title_if_missing(anime, titles["native"], "ja", "official")
      add_title_if_missing(anime, titles["romaji"], "en", "official")
      add_title_if_missing(anime, titles["english"], "en", "alternate")
    end

    def add_title_if_missing(anime, title, language, type_code)
      return if title.blank?
      return if anime.anime_titles.exists?(
        title: title,
        language: language
      )

      title_type = TitleType.find_by!(code: type_code)

      AnimeTitle.create!(
        anime: anime,
        title_type: title_type,
        title: title,
        language: language
      )
    end

    def build_date(date_data)
      return if date_data["year"].nil?

      Date.new(
        date_data["year"],
        date_data["month"] || 1,
        date_data["day"] || 1
      )
    end
  end
end