class AddChildIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :child_id, :integer
  end
end
