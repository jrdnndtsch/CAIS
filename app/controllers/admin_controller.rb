class AdminController < ApplicationController

	def panel
		@academic = Academic.new
		@academics = Academic.all.order(:subject, :course)

		@recreation = Recreation.new
		@recreations = Recreation.all.order(:recreation_type, :activity)

		@campu = Campu.new
		@campus = Campu.all.order(:campu_type, :feature)

		@academic_type = AcademicType.new
		@academic_types = AcademicType.all.order(:name)
		@campu_type = CampuType.new
		@campu_types = CampuType.all.order(:name)
		@recreation_type = RecreationType.new
		@recreation_types = RecreationType.all.order(:name)

		@city = City.new
		@cities = City.all.order(:province_id, :name )

		@province = Province.new 
		@provinces = Province.all.order(:name)
		
	end
end
