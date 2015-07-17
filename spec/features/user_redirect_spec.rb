require 'rails_helper'

describe "the redirects users from admin only pages" do
  it "redirects a user from create new post path" do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit new_post_path
    expect(page).to have_content "Web Developer, Problem Solver, Creative Thinker"
  end

  it "redirects a user from create new skill path" do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit new_skill_path
    expect(page).to have_content "Web Developer, Problem Solver, Creative Thinker"
  end

  it "redirects a user from create new project path" do
    FactoryGirl.create(:skill)
    FactoryGirl.create(:project)
    user = FactoryGirl.create(:user)
    login_as(user)
    visit new_skill_project_path(1, 1)
    expect(page).to have_content "Web Developer, Problem Solver, Creative Thinker"
  end

  it "redirects a user from the administrative dashboard path" do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit dashboard_path
    expect(page).to have_content "Web Developer, Problem Solver, Creative Thinker"
  end

  it "ensures non-admins can not link to add skill on skills page" do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit skills_path
    expect(page).to have_content "Web Developer, Problem Solver, Creative Thinker"
    expect(page).to have_no_content "Add skill"
  end
end
