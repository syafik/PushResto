require 'file_size_validator'
class Product < ActiveRecord::Base
  attr_accessible :description, :price, :name, :photo
  mount_uploader :photo, PhotoUploader  
  validates :description, :name, :presence => true
  validates :price, :presence => true, :numericality => true
  validates :photo, :presence => true,
    :file_size => {
      :maximum => 5.megabytes.to_i
    }
  has_many :d_orders, :foreign_key => "id_order"
  accepts_nested_attributes_for :d_orders, :reject_if => :all_blank, :allow_destroy => true

end
