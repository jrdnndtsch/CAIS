class AddSummerProgramsToSchool < ActiveRecord::Migration
  def change
  	add_column :schools, :summer_programs, :text
  end
end
