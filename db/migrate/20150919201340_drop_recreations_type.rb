class DropRecreationsType < ActiveRecord::Migration
  def change
  	drop_table :recreations_types
  end
end
