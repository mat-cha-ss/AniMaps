class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :user_animes, dependent: :destroy
  has_many :animes, through: :user_animes

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def series
    Series.joins(animes: :user_animes).where(user_animes: { user_id: id }).distinct
  end
end
