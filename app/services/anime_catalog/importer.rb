require "json"
require "uri"

module AnimeCatalog
    class Importer
        def initialize(file_path:)
            @file_path = file_path
        end

        def call
            imported_count = 0
            skipped_count = 0
            File.foreach(@file_path) do |line|
                next if line.strip.empty?
                data = JSON.parse(line)
                unless data["sources"].is_a?(Array)
                    skipped_count += 1
                    next
                end
                mal_id = extract_id(data["sources"], "myanimelist.net")
                anilist_id = extract_id(data["sources"], "anilist.co")
                if mal_id.nil? && anilist_id.nil?
                    skipped_count += 1
                    next
                end
                entry = find_catalog_entry(mal_id, anilist_id)
                entry.mal_id = mal_id if mal_id.present?
                entry.anilist_id = anilist_id if anilist_id.present?
                entry.title = data["title"] if data["title"].present?
                entry.anime_type = data["type"] if data["type"].present?
                entry.episodes = data["episodes"] if data["episodes"].present?
                entry.save!
                imported_count += 1
            end
            {imported: imported_count, skipped: skipped_count}
        end

        private

        def extract_id(sources, domain)
            source = sources.find do |url|
                URI.parse(url).host&.downcase == domain
            end
            return nil unless source
            path = URI.parse(source).path
            case domain
            when "myanimelist.net"
                path.match(%r{\A/anime/(\d+)(?:/|\z)})&.captures&.first&.to_i
            when "anilist.co"
                path.match(%r{\A/anime/(\d+)(?:/|\z)})&.captures&.first&.to_i
            end
        end

        def find_catalog_entry(mal_id, anilist_id)
            entry = AnimeCatalogEntry.find_by(mal_id: mal_id) if mal_id
            entry ||= AnimeCatalogEntry.find_by(anilist_id: anilist_id) if anilist_id
            entry ||= AnimeCatalogEntry.new
        end
    end
end