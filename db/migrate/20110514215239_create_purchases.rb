class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.date :date
      t.integer :supplier_id
      t.integer :item_id
      t.decimal :item_price
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end

