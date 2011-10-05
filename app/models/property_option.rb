class PropertyOption < ActiveRecord::Base
  attr_accessible :name, :value

  belongs_to :property

  validates :property_id, :name, :value, :presence => true

end
