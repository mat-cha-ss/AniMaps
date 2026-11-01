require "net/http"
require "json"

module Anilist
  class Client
    API_URL = "https://graphql.anilist.co"

    class NotFoundError < StandardError; end
    class ApiError < StandardError; end

    QUERY = <<~GRAPHQL
      query ($id: Int, $malId: Int) {
        Media(id: $id, idMal: $malId, type: ANIME) {
          id
          idMal

          title {
            native
            romaji
            english
          }

          format

          startDate {
            year
            month
            day
          }

          relations {
            edges {
              relationType

              node {
                id
                idMal
                type
                format

                title {
                  native
                  romaji
                  english
                }
              }
            }
          }
        }
      }
    GRAPHQL

    def self.find_by_mal_id(mal_id)
      request(malId: mal_id)
    end

    def self.find_by_id(id)
      request(id: id)
    end

    def self.request(variables)
      uri = URI(API_URL)
      loop do
        response = Net::HTTP.post(
          uri,
          {
            query: QUERY,
            variables: variables
          }.to_json,
          {
            "Content-Type" => "application/json",
            "Accept" => "application/json"
          }
        )
        data = JSON.parse(response.body)
        rate_limited = data["errors"]&.any? do |error|
          error["status"] == 429
        end
        if rate_limited
          retry_after = response["Retry-After"]&.to_i || 60
          Rails.logger.warn("AniList API rate limit exceeded. Retrying after #{retry_after} seconds.")
          sleep(retry_after + 1)
          next
        end
        if data["errors"].present?
          not_found = data["errors"].any? do |error|
            error["status"] == 404
          end
          raise NotFoundError, "AniList API returned 404 Not Found" if not_found
          raise ApiError, "AniList API error: #{data["errors"]}"
        end
        data.dig("data", "Media")
      end
    end

    private_class_method :request
  end
end