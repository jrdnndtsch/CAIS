class DropAcademicsTable < ActiveRecord::Migration
  def change
  	drop_table :academics
  end
end
