module Anilist
    class AnimeCatalogResolver
        def initialize(mal_id:)
            @mal_id = mal_id
        end
    
        def call
            anime = Anime.find_by(mal_id: @mal_id)
            return anime if anime&.series_id.present?
            Anilist::SeriesImporter.new(mal_id: @mal_id).call
            Anime.find_by!(mal_id: @mal_id)
        end
    end
end