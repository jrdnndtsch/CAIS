class AddAcademicTypeToAcademics < ActiveRecord::Migration
  def change
    add_reference :academics, :academic_type, index: true, foreign_key: true
  end
end
