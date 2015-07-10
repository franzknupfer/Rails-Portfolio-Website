require 'rails_helper'

describe "the create blog path" do
  it "creates a blog entry" do
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit posts_path
    click_on "New post"
    fill_in "Post title", :with => "Heyo"
    fill_in "Post content", :with => "test"
    click_on "Add post"
    expect(page).to have_content 'Heyo'
  end

  it "edits a blog entry" do
    FactoryGirl.create(:post)
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit posts_path
    click_on "Test"
    click_on "Edit post"
    fill_in "Post title", :with => "lala"
    click_on "Edit post"
    expect(page).to have_content 'lala'
  end

  it "deletes a blog entry" do
    FactoryGirl.create(:post)
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit posts_path
    click_on "Test"
    click_on "Delete post"
    expect(page).to have_content 'Blog'
    expect(page).to have_no_content 'Test'
  end
end
