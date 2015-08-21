class AddStudentBdySizetoSchools < ActiveRecord::Migration
  def change
  	add_column :schools, :student_body_size, :integer
  end
end
