require "set"

class Anilist::SeriesFinder
  SERIES_RELATIONS = %w[PREQUEL SEQUEL].freeze

  def initialize(mal_id:)
    @mal_id = mal_id
    @visited = Set.new
    @results = []
  end

  def call
    anime = Anilist::Client.find_by_mal_id(@mal_id)

    traverse(anime)

    @results
  end

  def root_anime(anime_list)
    anilist_ids = anime_list.map { |anime| anime["id"] }.to_set
    anime_list.find do |anime|
      has_prequel_in_series = anime["relations"]["edges"].any? do |edge|
        edge["relationType"] == "PREQUEL" &&
          anilist_ids.include?(edge["node"]["id"])
      end
      !has_prequel_in_series
    end
  end

  private

  def traverse(anime)
    return if @visited.include?(anime["id"])

    @visited.add(anime["id"])
    @results << anime

    anime["relations"]["edges"].each do |edge|
      next unless SERIES_RELATIONS.include?(edge["relationType"])

      related = edge["node"]

      # Fetch the related anime to inspect its relations too
      full_anime = Anilist::Client.find_by_id(related["id"])

      traverse(full_anime)
    end
  end
end