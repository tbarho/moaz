class Picture < ActiveRecord::Base
  acts_as_list

  attr_accessible :image
  belongs_to :imageable, :polymorphic => true
  mount_uploader :image, ImageUploader

  default_scope :order => "pictures.position ASC"
end
