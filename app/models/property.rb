class Property < ActiveRecord::Base
  attr_accessible :address, :price, :beds, :baths, :sqft, :description

  has_many :pictures

  validates :address, :price, :beds, :baths, :sqft, :description, :presence => true 
end
