class CreateSalesmen < ActiveRecord::Migration
  def self.up
    create_table :salesmen do |t|
      t.string :name
      t.date :age
      t.string :email
      t.string :phone
      t.string :cellphone
      t.integer :city_id

      t.timestamps
    end
  end

  def self.down
    drop_table :salesmen
  end
end
