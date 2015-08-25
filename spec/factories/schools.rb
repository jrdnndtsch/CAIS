# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school do
  	sequence(:id) {|n| n}
  	name "School name"
  	street_address "123 Main Street"
  	postal_code "1A2 B3C"
  	website_url "www.example.com"
  	contact_email "schoo@example.com"
  	description "this is the description of the school"
  	girls_boarding 	35
  	girls_day      	42 
  	boys_boarding  	32
  	boys_day       	48	
  	campus_size    	15
  	year_founded	1872
  	average_class_size  9 
  	student_teacher_ratio 9
  	dress_code 	false
  	student_body 'co-ed'
  	seven_day_tuition "30000"
  	five_day_tuition "20000"
  	boarding_grades	"k-12"
  	day_grades "k-12"
  	day_tuition "10000"
  	accreditations "CMAC"
  	advanced_placement true
  	international_bac true
  	payment_plans true
  	need_based_aid true
  	merit_scholarships true
  	# city_id
  	# school_id
  	# info_id
  	student_body_size "140"
  end
end
