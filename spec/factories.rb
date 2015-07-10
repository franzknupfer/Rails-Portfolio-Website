FactoryGirl.define do
  factory :admin, class: User do
    username "admin"
    email "admin@admin.com"
    password "testtest"
    admin true
  end

  factory :user do
    username "cato"
    email "cato@cato.com"
    password "testtest"
    admin false
  end

  factory :post do
    post_title "Test"
    post_content "Test"
  end

  factory :skill do
    skill_name "Ember"
    skill_short_description "Not as good as Rails."
    skill_full_description "That is all I will say for now."
    skill_icon "a.png"
  end
end
