class Skill < ActiveRecord::Base
  has_many :projects
  validates :skill_name, :presence => true
  validates :skill_full_description, :presence => true
  validates :skill_icon, :presence => true
end
