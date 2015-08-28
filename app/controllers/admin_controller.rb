class AdminController < ApplicationController

	def panel
		@academic = Academic.new
		@academics = Academic.all.order(:subject, :course)

		@recreation = Recreation.new
		@recreations = Recreation.all.order(:recreation_type, :activity)

		@campu = Campu.new
		@campus = Campu.all.order(:campu_type, :feature)

		@city = City.new
		@cities = City.all.order(:province_id, :name )

		@province = Province.new 
		@provinces = Province.all.order(:name)
		
	end
end
