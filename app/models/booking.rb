class Booking < ActiveRecord::Base
  belongs_to :activities
  belongs_to :children

end
