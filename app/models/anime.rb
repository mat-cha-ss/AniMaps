class Anime < ApplicationRecord
  belongs_to :series, optional: true
end
