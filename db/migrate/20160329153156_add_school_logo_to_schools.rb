class AddSchoolLogoToSchools < ActiveRecord::Migration
  def change
  	add_attachment :schools, :school_logo
  end
end
