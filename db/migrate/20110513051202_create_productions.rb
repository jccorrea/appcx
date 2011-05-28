class CreateProductions < ActiveRecord::Migration
  def self.up
    create_table :productions do |t|
      t.date :date
      t.string :product_name
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :productions
  end
end
