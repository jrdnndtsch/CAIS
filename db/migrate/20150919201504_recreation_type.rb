class RecreationType < ActiveRecord::Migration
  def change
  	create_table :recreation_types do |t|
  	  t.string :name

  	  t.timestamps null: false
  	end
  end
end
