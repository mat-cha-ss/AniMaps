class Location < ApplicationRecord
  belongs_to :city
  has_many :location_names
end
