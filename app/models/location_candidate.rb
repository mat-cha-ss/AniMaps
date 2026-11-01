class LocationCandidate < ApplicationRecord
  belongs_to :anime
  belongs_to :city, optional: true

  enum :status, {
    pending: "pending",
    approved: "approved",
    rejected: "rejected"
  }

  validates :source_url, presence: true
  validate :location_name_present

  private

  def location_name_present
    if name_ja.blank? && name_en.blank?
      errors.add(:base, "A Japanese or English name location name is required.")
    end
  end

end
