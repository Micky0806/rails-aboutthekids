class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :review
      t.string :trial_day

      t.timestamps null: false
    end
  end
end
