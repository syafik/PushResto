class DOrder < ActiveRecord::Base
  attr_accessible :id_product, :quantity
  belongs_to :h_order, :foreign_key => "id_order"
  belongs_to :product, :foreign_key => "id_product"
  validates :quantity, :presence => true, :numericality => true
end
