class Post < ActiveRecord::Base
  has_many :comments
  validates :post_title, :presence => true
  validates :post_content, :presence => true
end
