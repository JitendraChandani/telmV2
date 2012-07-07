require 'factory_girl'
FactoryGirl.define do
  factory :school,:class=>School do
    name 'a'
    address 'abcd'
    contact_person 'aaaa'
    contact_no 1234567890
    email 'a@a.com'
    status_id 1
    no_of_licences 50
  end
end