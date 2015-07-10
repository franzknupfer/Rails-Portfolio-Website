class Comment < ActiveRecord::Base
  belongs_to :post
  validates :comment_content, :presence => true
end
