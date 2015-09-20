class Campu < ActiveRecord::Base
	TYPE = [ 'Student Life', 'Dorm Amenities', 'Facilities', 'Clubs & Organizations' ]
	has_many :school_campus
	has_many :schools, through: :school_campus
	belongs_to :campu_type
end
