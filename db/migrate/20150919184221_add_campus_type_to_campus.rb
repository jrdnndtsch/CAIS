class AddCampusTypeToCampus < ActiveRecord::Migration
  def change
    add_reference :campus, :campus_type, index: true, foreign_key: true
  end
end
