require 'rails_helper'

describe Project do

 it { should validate_presence_of :project_name }
 it { should validate_presence_of :project_short_description }
 it { should validate_presence_of :project_full_description }
 it { should validate_presence_of :project_link }
end
