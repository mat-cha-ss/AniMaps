class Series < ApplicationRecord
    has_many :animes, dependent: :nullify
end
