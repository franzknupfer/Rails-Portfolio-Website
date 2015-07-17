Portfolio Project
Franz Knupfer 2015

Portfolio is built with Ruby on Rails. It includes the following functionality:

-Administrative and User accounts via the Devise gem. Users can log in, log out and create or delete account.
-Pages for showing coding skills, projects utilizing these coding skills, and a blog where users can add comments.
-Administrators can add, edit and delete projects, skills, and blog posts. Only administrators have access to these pages and to the administrative dashboard. Administrators can also delete comments.
-Photos can be added to blog posts via the Paperclip gem.
-96% testing coverage using RSpec, FactoryGirl, Capybara and SimpleCov.
-App is deployed to Heroku: https://aqueous-forest-7049.herokuapp.com. Note that all pictures/icons that were used in testing and production were removed when the database migrated to Heroku.

-NOTE: To get passing rspec tests with js:true in the comments section of the blog, the following line must be removed or there will be an error, as activating js:true makes it so that capybara can not find paperclip's image assets.

<%= image_tag post.attached_image.url(:medium) %>

must be removed in two places:

views/posts/index.html.erb (line 10)
views/posts/show.html.erb (line 2)
