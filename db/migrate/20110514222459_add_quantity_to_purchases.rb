class AddQuantityToPurchases < ActiveRecord::Migration
  def self.up
    add_column :purchases, :quantity, :number
  end

  def self.down
    remove_column :purchases, :quantity
  end
end
