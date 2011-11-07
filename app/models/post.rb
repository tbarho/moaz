class Post < ActiveRecord::Base
  attr_accessible :title, :body

  belongs_to :user

  validates_presence_of :user_id, :title, :body

  default_scope :order => "posts.created_at DESC"

  before_save :add_slug

  def to_param
    self.slug
  end

  private

  def add_slug
    self.slug = self.title.parameterize
  end
end
