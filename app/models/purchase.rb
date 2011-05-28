class Purchase < ActiveRecord::Base
  belongs_to :supplier , :class_name => "Supplier"
  has_many :item , :class_name => "Item"
  #has_many :items
end

