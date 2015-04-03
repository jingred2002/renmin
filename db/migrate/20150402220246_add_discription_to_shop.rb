class AddDiscriptionToShop < ActiveRecord::Migration
  def change
    add_column :shops, :discription, :string
  end
end
