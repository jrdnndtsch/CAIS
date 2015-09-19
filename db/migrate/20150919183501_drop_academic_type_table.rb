class DropAcademicTypeTable < ActiveRecord::Migration
  def change
  	drop_table :academic_types
  end
end
