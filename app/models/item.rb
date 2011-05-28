class Item < ActiveRecord::Base
  belongs_to :supplier , :class_name => "Supplier"
  belongs_to :category , :class_name => "Category"
  belongs_to :purchase , :class_name => "Purchase"

end

