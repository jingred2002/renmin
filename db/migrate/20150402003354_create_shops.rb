class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :area_id
      t.integer :user_id
      t.string :mobile
      t.string :phone
      t.string :address
      t.string :state

      t.timestamps null: false
    end
  end
end
