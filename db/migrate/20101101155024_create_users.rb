class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      
      # User related columns
      t.string :username
      t.string :firstname
      t.string :lastname
      t.text :status
			t.string :email
      t.string :password
      
			# Image related columns
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      
      # Settings related columns
      t.integer :is_admin, :default => 0
			t.integer :account_active, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
