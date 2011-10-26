class Option < ActiveRecord::Base
  attr_accessible :property_id, :name, :value

  belongs_to :property

  validates_presence_of :name, :value
end
