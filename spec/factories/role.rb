require 'factory_girl'
FactoryGirl.define do
  factory :super_admin,:class=>Role do
    name 'Super Admin'
  end
  factory :school_admin,:class=>Role do
    name 'School Admin'
  end
  factory :faculty,:class=>Role do
    name 'Faculty'
  end
  factory :parent,:class=>Role do
    name 'Parent'
  end
  factory :student,:class=>Role do
    name 'Student'
  end
end