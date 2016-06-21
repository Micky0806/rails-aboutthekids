class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    @city = self.city
    @address = self.address
    return @address + " " + @city
  end

  def full_address_changed?
    city_changed? || address_changed?
  end
end
