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