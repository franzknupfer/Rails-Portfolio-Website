require 'rails_helper'

describe "the delete a comment path" do
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
