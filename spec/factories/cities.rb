# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :city do
  	sequence(:id) {|n| n}
  	name "Toronto"
  	association :province
  end
end
