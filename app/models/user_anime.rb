class UserAnime < ApplicationRecord
  belongs_to :user
  belongs_to :anime

  validates :status, presence: true
  validates :user_id, uniqueness: { scope: :anime_id }

  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }, allow_nil: true
end
