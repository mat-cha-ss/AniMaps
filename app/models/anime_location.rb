class AnimeLocation < ApplicationRecord
  belongs_to :anime
  belongs_to :location
end
