class Series < ApplicationRecord
    has_many :series_titles, dependent: :destroy
    has_many :animes, dependent: :nullify

    def official_title(language)
        series_titles
        .joins(:title_type)
        .find_by(title_types: { code: "official" }, language: language)
        &.title
    end
end
