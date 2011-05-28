class AddSupplierIdToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :supplier_id, :integer
  end

  def self.down
    remove_column :items, :supplier_id
  end
end
