class CampuType < ActiveRecord::Base
	has_many :campus
	has_many :school_campus, through: :campus
end
