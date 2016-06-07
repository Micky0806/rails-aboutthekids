class AddPriceToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :price, :integer
  end
end
