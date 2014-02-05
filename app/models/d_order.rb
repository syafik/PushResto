class DOrder < ActiveRecord::Base
  attr_accessible :id_product, :quantity
  belongs_to :h_order
  belongs_to :product
end
