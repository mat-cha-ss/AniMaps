class SeriesController < ApplicationController
  def index
    @series = Series
      .joins(series_titles: :title_type)
      .includes(series_titles: :title_type)
      .where(
        series_titles: { language: "ja" },
        title_types: { code: "official" }
      )
      .order("series_titles.title")
  end

  def show
    @series = Series.find(params[:id])
  end

  def locations
    @series = Series.find(params[:id])
    @animes = @series.animes.includes(:anime_titles, locations: :location_names)
  end

end