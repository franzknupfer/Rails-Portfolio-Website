require 'rails_helper'

describe "the add a skill process" do
  it "adds a skill to the home page" do
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit skills_path
    click_link "Add skill"
    fill_in 'Skill name', :with => 'Ember'
    fill_in 'A short description for the home page', :with => 'short description'
    fill_in 'A longer description for the show page', :with => 'long description'
    fill_in 'Add an icon', :with => 'icon'
    click_on 'Add skill'
    expect(page).to have_content 'Ember'
  end

  it "destroys a skill" do
    FactoryGirl.create(:skill)
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit skills_path
    click_on "Ember"
    click_on "Edit this skill"
    click_on "Delete this skill"
    expect(page).to have_no_content 'Ember'
    expect(page).to have_content 'Web Dev, Problem Solver, Creative Thinker'
  end

  it "gives an error when a required skill field is not entered" do
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    Skill.create(skill_name: "Ember", skill_short_description: "a", skill_full_description: "a", skill_icon: "a")
    visit skills_path
    click_link "Ember"
    click_link 'Edit this skill'
    fill_in "Skill name", :with => ''
    click_on 'Add skill'
    expect(page).to have_content 'blank'
  end

end
