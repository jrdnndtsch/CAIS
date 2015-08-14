class CreateSchoolAcademics < ActiveRecord::Migration
  def change
    create_table :school_academics do |t|
      t.references :school, index: true, foreign_key: true
      t.references :academic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
