class AnimeStudio < ApplicationRecord
  belongs_to :anime
  belongs_to :genre
end
