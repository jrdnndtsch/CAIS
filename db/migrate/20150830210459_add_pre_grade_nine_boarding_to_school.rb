class AddPreGradeNineBoardingToSchool < ActiveRecord::Migration
  def change
  	add_column :schools, :pre_grade_nine_boarding, :boolean
  end
end
