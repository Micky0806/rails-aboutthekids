class ChangeReviewInBooking < ActiveRecord::Migration
  def change
    change_column :bookings, :review, :text
    remove_column :bookings, :trial_day, :string
  end
end
