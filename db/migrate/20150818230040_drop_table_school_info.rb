class DropTableSchoolInfo < ActiveRecord::Migration
  def change
  	drop_table :school_infos
  end
end
