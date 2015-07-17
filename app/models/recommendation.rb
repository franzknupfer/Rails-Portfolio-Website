class Recommendation < ActiveRecord::Base
  validates :recommendation_content, :presence => true
end
