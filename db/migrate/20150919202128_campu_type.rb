class CampuType < ActiveRecord::Migration
  def change
	create_table :campu_types do |t|
	  t.string :name

	  t.timestamps null: false
	end
  end
end
