class CreateSchoolCampus < ActiveRecord::Migration
  def change
    create_table :school_campus do |t|
      t.references :school, index: true, foreign_key: true
      t.references :campu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
