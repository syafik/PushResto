class HOrder < ActiveRecord::Base
  attr_accessible :id_user, :phone, :shipping, :d_orders_attributes
  belongs_to :user
  has_many :d_orders, :foreign_key => "id_order"
  validates :shipping,  :presence => true
  validates :phone, :presence => true, :numericality => true

  accepts_nested_attributes_for :d_orders, :reject_if => :all_blank, :allow_destroy => true
end
