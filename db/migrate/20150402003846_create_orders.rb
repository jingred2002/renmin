class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.integer :user_id
      t.string :state

      t.timestamps null: false
    end
  end
end
