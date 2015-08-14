class RemoveTypeColumn < ActiveRecord::Migration
  def change
  	remove_column :recreations, :type, :string
  end
end
