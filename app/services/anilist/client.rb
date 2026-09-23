require "net/http"
require "json"

module Anilist
  class Client
    API_URL = "https://graphql.anilist.co"

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

      raise "AniList API error: #{data["errors"]}" if data["errors"].present?

      data.dig("data", "Media")
    end

    private_class_method :request
  end
end