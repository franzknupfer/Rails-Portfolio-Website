require 'rails_helper'

describe "the recommendations path" do
  it "allows user to see recommendations path without reloading page", js: true do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit skills_path
    click_on "Best of Portland"
    expect(page).to have_content "Recommendations"
  end

  it "allows user to see add recommendation form without reloading page", js: true do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit skills_path
    click_on "Best of Portland"
    click_on "Add a recommendation"
    expect(page).to have_content "What do you like about Portland?"
  end

  it "allows user to see add recommendation without reloading page", js: true do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit skills_path
    click_on "Best of Portland"
    click_on "Add a recommendation"
    fill_in "What do you like about Portland?", :with => 'It is great!'
    click_on "Add recommendation"
    expect(page).to have_content "It is great!"
  end
end
