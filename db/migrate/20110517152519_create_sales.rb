class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.date :date
      t.integer :salesman_id
      t.integer :customer_id
      t.integer :product_id
      t.integer :quantity
      t.float :unit_price
      t.float :total_sale

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
