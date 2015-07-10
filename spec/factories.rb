FactoryGirl.define do
  factory :admin, class: User do
    username "admin"
    email "admin@admin.com"
    password "testtest"
    admin true
  end

  factory :user do
    username "factorygirlsucks"
    email "factorygirl@crappy.com"
    password "crappyfactory"
    admin false
  end

  factory :post do
    post_title "Test"
    post_content "Test"
  end
end
