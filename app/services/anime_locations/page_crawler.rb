require "net/http"
require "nokogiri"
require "uri"

module AnimeLocations
    class PageCrawler
        MAX_RESPONSE_BYTES = 2_000_000 # 2 MB

        def initialize(anime:, source_url:, location_selector:)
            @anime = anime
            @source_url = source_url
            @location_selector = location_selector
        end

        def call
            html = fetch_page
            document = Nokogiri::HTML(html)
            names = document.css(@location_selector).map { |element| element.text.squish }.reject(&:blank?).uniq
            names.filter_map do |name|
                next if LocationCandidate.exists?(
                    anime: @anime,
                    source_url: @source_url,
                    name_ja: name
                )
                LocationCandidate.create!(
                    anime: @anime,
                    name_ja: name,
                    source_url: @source_url,
                    evidence: "Extracted from #{@location_selector}",
                    status: "pending"
                )
            end
        end
    
        private

        def fetch_page
            uri = URI.parse(@source_url)
            unless uri.is_a?(URI::HTTPS)
                raise ArgumentError, "Only HTTPS sources are supported"
            end
            # Only crawl source domains you have explicitly reviewed.
            allowed_hosts = ["example.com"]
            unless allowed_hosts.include?(uri.host)
                raise ArgumentError, "Source domain is not allowed"
            end
            response = Net::HTTP.start(
                uri.host,
                uri.port,
                use_ssl: true,
                open_timeout: 5,
                read_timeout: 10
            ) do |http|
                request = Net::HTTP::Get.new(uri.request_uri)
                request["User-Agent"] = "AniMapsResearchBot/0.1"
                http.request(request)
            end
            unless response.is_a?(Net::HTTPSuccess)
                raise "Page request failed: HTTP #{response.code}"
            end
            unless response["Content-Type"].to_s.downcase.include?("text/html")
                raise "Source did not return HTML"
            end
            if response.body.bytesize > MAX_RESPONSE_BYTES
                raise "Source page is too large"
            end
            response.body
        end
    end
end