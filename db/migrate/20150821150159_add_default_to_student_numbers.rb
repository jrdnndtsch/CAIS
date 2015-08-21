class AddDefaultToStudentNumbers < ActiveRecord::Migration
  def change
  	change_column :schools, :girls_boarding, :integer, :default => 0
  	change_column :schools, :girls_day, :integer, :default => 0
  	change_column :schools, :boys_boarding, :integer, :default => 0
  	change_column :schools, :boys_day, :integer, :default => 0
  	change_column :schools, :campus_size, :integer, :default => 0
  	change_column :schools, :average_class_size, :integer, :default => 0
  	change_column :schools, :student_teacher_ratio, :integer, :default => 0
  	change_column :schools, :seven_day_tuition, :float, :default => 0.0
  	change_column :schools, :five_day_tuition, :float, :default => 0.0
  	change_column :schools, :day_tuition, :float, :default => 0
  end
end
