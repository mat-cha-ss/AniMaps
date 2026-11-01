module AnimeLocations
    module Sources
        class AdminiNote

            ANIME_PATTERNS = {
                /とある科学の超電磁砲T/ => "railgun_t",
                /とある科学の超電磁砲OVA/ => "railgun_ova",
                /とある科学の超電磁砲S/ => "railgun_s",
                /とある科学の超電磁砲(?![A-Za-z])/ => "railgun",
                /劇場版.*とある魔術の禁書目録/ => "index_movie",
                /とある魔術の禁書目録(?:Ⅱ|II)I/ => "index_2",
                /とある魔術の禁書目録(?![A-Za-z])/ => "index"
            }.freeze

            def initialize(html:)
                @document = Nokogiri::HTML(html)
            end

            def call
                results = []
                @document.css("h4").each do |heading|
                    location_name = heading.text.squish
                    next if location_name.blank?
                    node = heading.next_element
                    while node && !node.name.match?(/\Ah[1-4]\z/)
                        if node.name == "p"
                            text = node.text.squish
                            if text.include?("後者画像は")
                                anime_key = identify_anime(text)
                                if anime_key
                                    results << {
                                        name_ja: location_name,
                                        anime_key: anime_key,
                                        evidence: text
                                    }
                                end
                            end
                        end
                        node = node.next_element
                    end
                end
                results.uniq { |result| [result[:name_ja], result[:anime_key]] }
            end

            private

            def identify_anime(text)
                ANIME_PATTERNS.each do |pattern, anime_key|
                    return anime_key if text.match?(pattern)
                end
                nil
            end
            #TODO: 開発の流れの設計を立てること

        end
    end
end