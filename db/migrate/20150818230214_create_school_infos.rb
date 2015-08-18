class CreateSchoolInfos < ActiveRecord::Migration
  def change
    create_table :school_infos do |t|
      t.references :school, index: true, foreign_key: true
      t.references :info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
