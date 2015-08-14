class CreateSchoolRecreations < ActiveRecord::Migration
  def change
    create_table :school_recreations do |t|
      t.references :school, index: true, foreign_key: true
      t.references :recreation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
