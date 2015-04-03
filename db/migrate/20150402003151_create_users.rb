class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_name
      t.string :password
      t.string :nick_name
      t.string :mobile
      t.string :email
      t.integer :area_id
      t.string :user_type
      t.string :address
      t.string :state

      t.timestamps null: false
    end
  end
end
