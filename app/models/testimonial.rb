class Testimonial < ActiveRecord::Base
  attr_accessible :person, :address, :content, :position

  validates_presence_of :person, :content
end
