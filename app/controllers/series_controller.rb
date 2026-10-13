class SeriesController < ApplicationController
  before_action :set_series, only: [:locations, :events]

  def index
    @series = Current.user.series
      .joins(series_titles: :title_type)
      .includes(series_titles: :title_type)
      .where(
        series_titles: { language: "en" },
        title_types: { code: "official" }
      )
      .order("series_titles.title")
  end

  def locations
    set_series
    @animes = user_animes_for_series.includes(:anime_titles, locations: :location_names)
  end

  def events
    set_series
    @animes = user_animes_for_series.includes(:anime_titles, events: :event_type)
  end

  private

  def set_series
    #Find the series only if current user has anime in it
    @series = Current.user.series.find(params[:id])
  end

  def user_animes_for_series
    @series.animes.joins(:user_animes).where(user_animes: { user_id: Current.user.id }).distinct
  end
end