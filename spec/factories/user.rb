require 'factory_girl'
FactoryGirl.define do
  factory :user,:class=>User do
    email 'a@a.com'
    password '123456'
    password_confirmation '123456'
    role Role.school_admin
    school_id 1
  end
end