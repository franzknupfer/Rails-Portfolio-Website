class Project < ActiveRecord::Base
  belongs_to :skill
  validates :project_name, :presence => true
  validates :project_short_description, :presence => true
  validates :project_full_description, :presence => true
  validates :project_link, :presence => true
end
