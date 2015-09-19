class DropCampusType < ActiveRecord::Migration
  def change
  	drop_table :campus_types
  end
end
