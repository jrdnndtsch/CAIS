class School < ActiveRecord::Base
	STUDENT_BODY = %w[ co-ed boys gilrs ]
	has_many :school_recreations
	has_many :recreations, through: :school_recreations
	has_many :school_campus
	has_many :campus, through: :school_campus
	has_many :school_academics
	has_many :academics, through: :school_academics
	belongs_to :city
	delegate :province, :to => :city

	def arts
		array = []
		self.school_recreations.each do |recreation|
			if recreation.recreation.recreation_type == 'Arts'
				array << recreation.recreation
			end
		end
		return array
	end

	def recreational_sports
		array = []
		self.school_recreations.each do |recreation|
			if recreation.recreation.recreation_type == 'Recreational Sports'
				array << recreation.recreation
			end
		end
		return array
	end

	def interscholastic_sports
		array = []
		self.school_recreations.each do |recreation|
			if recreation.recreation.recreation_type == 'Interscholastic Sports'
				array << recreation.recreation
			end
		end
		return array
	end

	def student_body_size
		self.girls_boarding + self.girls_day + self.boys_boarding + self.boys_day
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

	def self.search
		# schools = School.order(:name)
		schools = School.joins(:city).where(cities: {province_id: 2}) 
		schools = schools.where("student_body == ?", 'co-ed' )
		schools = schools.where(student_body_size: 1..100)
	end

end
