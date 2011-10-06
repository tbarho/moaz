class Picture < ActiveRecord::Base
  attr_accessible :property_id, :image
  belongs_to :property
  mount_uploader :image, ImageUploader
end
