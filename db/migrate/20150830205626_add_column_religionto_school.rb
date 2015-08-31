class AddColumnReligiontoSchool < ActiveRecord::Migration
  def change
  	add_column :schools, :religion, :string
  end
end
