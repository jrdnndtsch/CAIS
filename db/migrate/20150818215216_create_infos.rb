class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :description
      t.string :department_director
      t.decimal :percentage_at_college

      t.timestamps null: false
    end
  end
end
