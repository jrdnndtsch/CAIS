class AddTableAcademics < ActiveRecord::Migration
  def change
	  	create_table :academics do |t|
	  	  t.string :subject
	  	  t.string :class

	  	  t.timestamps null: false
	  end
	end
end
