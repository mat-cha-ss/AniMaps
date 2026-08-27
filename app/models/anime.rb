class Anime < ApplicationRecord
  belongs_to :series, optional: true

  has_many :anime_locations, dependent: :destroy
  has_many :locations, through: :anime_locations

  has_many :anime_events, dependent: :destroy
  has_many :events, through: :anime_events
end
