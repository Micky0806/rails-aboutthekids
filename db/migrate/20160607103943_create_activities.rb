class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :category
      t.boolean :open_monday
      t.boolean :open_tuesday
      t.boolean :open_wednesday
      t.boolean :open_thursday
      t.boolean :open_friday
      t.boolean :open_saturday
      t.boolean :open_sunday
      t.boolean :trial_monday
      t.boolean :trial_tuesday
      t.boolean :trial_wednesday
      t.boolean :trial_thursday
      t.boolean :trial_friday
      t.boolean :trial_saturday
      t.boolean :trial_sunday
      t.integer :trial_capacity
      t.string :photo
      t.string :address
      t.string :city
      t.date :period_beginning
      t.date :period_ending

      t.timestamps null: false
    end
  end
end
