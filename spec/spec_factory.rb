require 'factory_girl'

Factory.define :user do |u|
  
  u.login "Tester"
  u.password "Tester1"
  u.password_confirmation "Tester1"
  u.email "Joe@email.com"
  
end

Factory.define :system do |s|
  
  s.subdomain "rails"
  s.description "Ruby on Rails offers full plugin support for all their applications.  Just 'script/plugin install gitp.//blah' and away you go!"
  s.system_url "httpp.//rubyonrails.org"
  s.name "Rails"
  
end

Factory.define :plugin do |p|
  
  p.github_url "http://github.com/queso/sitemap"
  p.description "The Rails sitemap plugin, allows you to easily create sitemap.xml files straight from your ActiveRecord db."
  p.name "Sitemap"
  p.association :system
  p.association :owner, :factory => :user
  p.popularity "1.5"
  p.watchers "1"
  p.forks "1"
  
end