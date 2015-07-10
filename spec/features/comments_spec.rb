require 'rails_helper'

describe "the delete a comment path" do
  it "allows user to add a comment" do
    FactoryGirl.create(:post)
    user = FactoryGirl.create(:user)
    login_as(user)
    visit posts_path
    click_on "Test"
    click_on "Add a comment"
    fill_in "Add your comment", :with => "Yay!"
    click_on "Add comment"
    expect(page).to have_content "Thanks for your comment!"
  end

  it "allows admin to delete a comment" do
    FactoryGirl.create(:post)
    FactoryGirl.create(:comment)
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit posts_path
    click_on 'Test'
    click_on 'X'
    expect(page).to have_content "Test"
    expect(page).to have_no_content "heya"
  end
end
