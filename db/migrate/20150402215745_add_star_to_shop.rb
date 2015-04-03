class AddStarToShop < ActiveRecord::Migration
  def change
    add_column :shops, :star, :integer
    add_column :shops, :send_expenses, :float
    add_column :shops, :send_up, :integer
    add_column :shops, :send_time, :string
  end
end
