module Mal
    class XmlParser
        ALLOWED_STATUSES = ["Completed", "Watching"].freeze
        class InvalidXmlError < StandardError; end
        def initialize(file:)
            @file = file
        end

        def call
            document = Nokogiri::XML(@file.read) do |config|
                config.strict.nonet
            end
            document.xpath("//anime").filter_map do |anime_node|
                parse_anime_node(anime_node)
            end
        rescue Nokogiri::XML::SyntaxError => e
            raise InvalidXmlError, "Invalid XML file: #{e.message}"
        end

        private

        def parse_anime_node(anime_node)
            status = anime_node.at_xpath("my_status")&.text
            return unless ALLOWED_STATUSES.include?(status)
            mal_id = anime_node.at_xpath("series_animedb_id")&.text&.to_i
            return if mal_id.nil? || mal_id.zero?
            {
                "mal_id": mal_id,
                "romaji" => anime_node.at_xpath("series_title")&.text,
                "status" => status
            }
        end
    end
end