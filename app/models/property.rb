class Property < ActiveRecord::Base
  attr_accessible :address, :price, :beds, :baths, :sqft, :neighborhood, :description, :status

  has_many :pictures, :as => :imageable, :dependent => :destroy
  has_many :options, :dependent => :destroy

  validates :address, :price, :beds, :baths, :sqft, :neighborhood, :description, :presence => true 

  before_save :add_slug

  def to_param
    self.slug
  end

  private

  def add_slug
    self.slug = self.address.parameterize
  end
end
