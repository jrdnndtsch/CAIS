# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school_academic do
  	association :school
  	association :academic
  end
end
