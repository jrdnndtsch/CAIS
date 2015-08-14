class AddCourseToAcademicsTable < ActiveRecord::Migration
  def change
  	add_column :academics, :course, :string
  end
end
