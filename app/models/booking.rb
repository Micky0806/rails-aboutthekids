class Booking < ActiveRecord::Base
  belongs_to :users
  belongs_to :activities
  belongs_to :children, through: :users

end
