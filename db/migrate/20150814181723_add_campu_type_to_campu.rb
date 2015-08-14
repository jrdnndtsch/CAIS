class AddCampuTypeToCampu < ActiveRecord::Migration
  def change
  	add_column :campus, :campu_type, :string
  end
end
