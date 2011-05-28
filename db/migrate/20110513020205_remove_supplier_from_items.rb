class RemoveSupplierFromItems < ActiveRecord::Migration
  def self.up
    remove_column :items, :supplier
  end

  def self.down
    add_column :items, :supplier, :int
  end
end
