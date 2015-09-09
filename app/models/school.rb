class School < ActiveRecord::Base
	STUDENT_BODY = %w[ no_preference co-ed boys girls ]
	TRUE_FALSE = %w[ no_preference yes no]
	has_many :school_recreations
	has_many :recreations, through: :school_recreations
	has_many :school_campus
	has_many :campus, through: :school_campus
	has_many :school_academics
	has_many :academics, through: :school_academics
	belongs_to :city
	delegate :province, :to => :city
	validate :validate_student_body_size
	
	def validate_student_body_size
		if self.student_body_size.present?
			errors.add(:student_body_size, "student body size must match total boarding and day") if self.girls_boarding + self.girls_day + self.boys_boarding + self.boys_day != self.student_body_size
		end	
	end
	def amenity_type(school, amenity)
		school.send("school_"+amenity)
	end


	def amenity_detail_list(school,amenity, amenity_type_id)
		amen = amenity.singularize
		school.send("school_"+amenity).where(amen => amenity_type_id)
	end

	def arts
		array = []
		self.school_recreations.each do |recreation|
			if recreation.recreation.recreation_type == 'Arts'
				array << recreation.recreation
			end
		end
		return array
	end

	def total_boarding
		self.girls_boarding + self.boys_boarding
	end

	def total_day
		self.girls_day + self.boys_day
	end

	def total_girls
		self.girls_boarding + self.girls_day
	end

	def total_boys
		self.boys_boarding + self.boys_day
	end

	def percentage_girls
		(self.total_girls.to_f/self.student_body_size.to_f) * 100
	end

	def percentage_boys
		(self.total_boys.to_f/self.student_body_size.to_f) * 100
	end

	def self.school_from_province(province_id="any")

		if province_id == 'any'
			return School.all
		else
			return School.joins(:city).where(cities: {province_id: province_id})
		end
		
	end


	def self.search(province="any", student_body, min, max, international_bac, advanced_placement, pre_grade_nine_boarding)
		# schools = School.order(:name)
		schools = School.school_from_province(province) 
		schools = schools.where(student_body_size: min..max)
		if student_body != 'no_preference'
			schools = schools.where(student_body: student_body)
		end
		# raise "hell"
		if international_bac == true || international_bac == false
			schools = schools.where(international_bac: international_bac)
		end	
		if advanced_placement == true || advanced_placement == false
			schools = schools.where(advanced_placement: advanced_placement)
		end
		if pre_grade_nine_boarding == true || pre_grade_nine_boarding == false
			schools = schools.where(pre_grade_nine_boarding: pre_grade_nine_boarding)
		end
		return schools
	end

end
