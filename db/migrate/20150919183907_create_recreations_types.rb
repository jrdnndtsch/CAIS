class CreateRecreationsTypes < ActiveRecord::Migration
  def change
    create_table :recreations_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
