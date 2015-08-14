class ChangeDescriptionText < ActiveRecord::Migration
  def change
  	change_column :schools, :description, :text
  end
end
