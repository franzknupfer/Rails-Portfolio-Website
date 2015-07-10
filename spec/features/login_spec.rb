require 'rails_helper'

describe "the create an account and add a comment path" do
  it "creates an account and allows a user to add comment" do
    FactoryGirl.create(:post)
    visit new_user_registration_path
    fill_in "Username", :with => "jim"
    fill_in "Email", :with => "jim@smith.com"
    fill_in "Password", :with => "testtest"
    fill_in "Password confirmation", :with => "testtest"
    click_button "Sign up"
    expect(page).to have_content 'You have signed up successfully.'
  end
end
