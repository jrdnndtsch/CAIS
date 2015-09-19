class CreateTableAcademicType < ActiveRecord::Migration
  def change
    create_table :academic_types do |t|
      t.string :name
    end
  end
end
