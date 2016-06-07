class AddTrialDayToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :trial_day, :date
  end
end
