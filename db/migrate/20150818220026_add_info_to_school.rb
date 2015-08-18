class AddInfoToSchool < ActiveRecord::Migration
  def change
    add_reference :schools, :school, index: true, foreign_key: true
    add_reference :schools, :info, index: true, foreign_key: true
  end
end
