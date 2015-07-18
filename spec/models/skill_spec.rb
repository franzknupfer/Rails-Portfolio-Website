require 'rails_helper'

describe Skill do

 it { should validate_presence_of :skill_name }
 it { should validate_presence_of :skill_full_description }
 it { should validate_presence_of :skill_icon }
end
