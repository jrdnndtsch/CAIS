class AddCampuTypeToCampus < ActiveRecord::Migration
  def change
    add_reference :campus, :campu_type, index: true, foreign_key: true
  end
end
