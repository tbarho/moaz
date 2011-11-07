class Gallery < ActiveRecord::Base
  acts_as_list
  attr_accessible :title

  has_many :pictures, :as => :imageable, :dependent => :destroy

  validates_presence_of :title
  
  default_scope :order => "galleries.position ASC"

  before_save :add_slug

  def to_param
    self.slug
  end

  private

  def add_slug
    self.slug = self.title.parameterize
  end
end
