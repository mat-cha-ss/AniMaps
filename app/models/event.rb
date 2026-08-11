class Event < ApplicationRecord
  belongs_to :location
  belongs_to :event_type
end
