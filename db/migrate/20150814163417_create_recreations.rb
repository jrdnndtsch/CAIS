class CreateRecreations < ActiveRecord::Migration
  def change
    create_table :recreations do |t|
      t.string :type
      t.string :activity

      t.timestamps null: false
    end
  end
end
