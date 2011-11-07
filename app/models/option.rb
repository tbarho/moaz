class Option < ActiveRecord::Base
  attr_accessible :property_id, :content

  belongs_to :property

  validates_presence_of :property_id, :content
end
