class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :file_name
      t.integer :container_id
      t.string :container_type
      t.string :disk_name
      t.string :disk_directory

      t.timestamps null: false
    end
  end
end
