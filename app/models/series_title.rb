class SeriesTitle < ApplicationRecord
  belongs_to :series
  belongs_to :title_type
end
