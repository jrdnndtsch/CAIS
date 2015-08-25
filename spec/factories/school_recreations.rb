# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school_recreation do
  	association :school
  	association :recreation
  end
end
