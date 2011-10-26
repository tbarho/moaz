class Property < ActiveRecord::Base
  attr_accessible :address, :price, :beds, :baths, :sqft, :description

  has_many :pictures, :dependent => :destroy
  has_many :options, :dependent => :destroy

  validates :address, :price, :beds, :baths, :sqft, :description, :presence => true 
end
