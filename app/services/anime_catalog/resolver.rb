module AnimeCatalog
    class Resolver
        def initialize(mal_id:)
            @mal_id = mal_id
        end

        def call
            #Step 1: Check if the anime already exists.
            anime = Anime.find_by(mal_id: @mal_id)
            return anime if anime
            #Step 2: Find the anime in the local catalog.
            catalog = AnimeCatalogEntry.find_by(mal_id: @mal_id)
            return nil unless catalog
            #Step 3: Create a new Anime record.
            Anime.transaction do
                anime = Anime.create!(mal_id: catalog.mal_id, anilist_id: catalog.anilist_id)
                #Step 4: Add title
                if catalog.title.present?
                    title_type = TitleType.find_by!(code: "official")
                    AnimeTitle.create!(
                        anime_id: anime.id,
                        title_type_id: title_type.id,
                        title: catalog.title,
                        language: "en"
                    )
                end
                anime
            end
        end
    end
end