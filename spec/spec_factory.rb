require 'factory_girl'

Factory.define :user do |u|
  
  u.login "Tester"
  u.password "Tester1"
  u.password_confirmation "Tester1"
  u.email "Joe@email.com"
  
end