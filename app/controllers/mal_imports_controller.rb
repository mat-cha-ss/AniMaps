class MalImportsController < ApplicationController
    def new
    end

    def create
        file = params[:file]
        if file.blank?
            redirect_to mal_import_path, alert: "Please select a MAL XML file."
            return
        end
        entries = Mal::XmlParser.new(file: file).call
        imported_count = 0
        skipped_entries = []
        entries.each do |entry|
            begin
                Anilist::AnimeCatalogResolver.new(mal_id: entry[:mal_id]).call
                imported_count += 1
            rescue Anilist::Client::NotFoundError
                skipped_entries << entry
            end
        end

        redirect_to anime_path, notice: "Successfully imported #{imported_count} entries from MyAnimeList."
        if skipped_entries.any?
            skipped_titles = skipped_entries.map do |entry|
                "#{entry[:title]} (MAL ID: #{entry[:mal_id]})"
            end
            message += " The following entries were skipped because they could not be found on AniList: #{skipped_titles.join(", ")}."
        end
        redirect_to anime_path, notice: message
    rescue Anilist::Client::ApiError => e
        redirect_to mal_import_path, alert: "AniList API error: #{e.message}"
    rescue Mal::XmlParser::InvalidXmlError => e
        redirect_to mal_import_path, alert: e.message
    end
end