class City < ApplicationRecord
  belongs_to :prefecture
  has_many :locations
end
