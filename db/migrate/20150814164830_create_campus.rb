class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :type
      t.string :feature

      t.timestamps null: false
    end
  end
end
