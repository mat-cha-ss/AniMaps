class AnimeTitle < ApplicationRecord
  belongs_to :anime
  belongs_to :title_type
end
