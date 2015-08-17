class AddCityToSchool < ActiveRecord::Migration
  def change
    add_reference :schools, :city, index: true, foreign_key: true
  end
end
