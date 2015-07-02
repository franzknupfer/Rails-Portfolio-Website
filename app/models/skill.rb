class Skill < ActiveRecord::Base
  validates :skill_name, :presence => true
  validates :skill_short_description, :presence => true
  validates :skill_full_description, :presence => true
  validates :skill_icon, :presence => true
end
