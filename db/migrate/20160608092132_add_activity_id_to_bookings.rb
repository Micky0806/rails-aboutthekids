class AddActivityIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :activity_id, :integer
  end
end
