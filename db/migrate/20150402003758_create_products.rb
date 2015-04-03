class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :shop_id
      t.float :price
      t.string :discription
      t.integer :author_id
      t.string :state

      t.timestamps null: false
    end
  end
end
