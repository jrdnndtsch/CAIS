class RemoveTypeFromCampu < ActiveRecord::Migration
  def change
  	remove_column :campus, :type
  end
end
