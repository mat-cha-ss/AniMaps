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
        missing_entries = []
        grouped_series_ids = []
        entries.each do |entry|
            mal_id = entry[:mal_id]
            #Step 1: Find or create the anime using the local catalog.
            anime = AnimeCatalog::Resolver.new(mal_id: mal_id).call
            unless anime
                missing_entries << entry
                next
            end
            imported_count += 1
            #Step 2: Find similar anime and assign a likely series.
            series = AnimeCatalog::SeriesGrouper.new(mal_id: mal_id).call
            grouped_series_ids << series.id if series
        end
        grouped_series_ids.uniq!

        message = "Successfully imported #{imported_count} entries from MyAnimeList."
        message += " Matched #{grouped_series_ids.size} series."
        if missing_entries.any?
            missing_titles = missing_entries.map do |entry|
                "#{entry[:title]} (MAL ID: #{entry[:mal_id]})"
            end
            message += " The following entries were skipped because they could not be found in the local anime catalog: #{missing_titles.join(", ")}."
        end
        redirect_to anime_path, notice: message
    rescue Mal::XmlParser::InvalidXmlError => e
        redirect_to mal_import_path, alert: e.message
    end
end