# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :province do
  	sequence(:id) {|n| n}
  	name "Ontario"
  end
end
