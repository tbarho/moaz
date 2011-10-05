class Property < ActiveRecord::Base
  attr_accessible :address, :price, :beds, :baths, :sqft, :description 

  has_many :options, :class_name => "PropertyOption"

  validates :address, :price, :beds, :baths, :sqft, :description, :presence => true 
end
