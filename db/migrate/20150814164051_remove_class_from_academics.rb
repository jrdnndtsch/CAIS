class RemoveClassFromAcademics < ActiveRecord::Migration
  def change
  	remove_column :academics, :class
  end
end
