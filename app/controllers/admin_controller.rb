class AdminController < ApplicationController

	def panel
		@academic = Academic.new
		@academics = Academic.all

		@recreation = Recreation.new
		@recreations = Recreation.all

		@campu = Campu.new
		@campus = Campu.all

		@city = City.new
		@cities = City.all

		@province = Province.new 
		@provinces = Province.all
		
	end
end
