class Activity < ActiveRecord::Base
belongs_to :user
has_many :bookings
mount_uploader :photo, PhotoUploader
end
