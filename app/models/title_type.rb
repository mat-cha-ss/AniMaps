class TitleType < ApplicationRecord
  has_many :series_titles, dependent: :restrict_with_error
  has_many :anime_titles, dependent: :restrict_with_error
end
