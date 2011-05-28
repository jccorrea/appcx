class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :salesman
#  has_many :products
#  has_many :
end

