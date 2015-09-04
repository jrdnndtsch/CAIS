class AddEsLtoSchool < ActiveRecord::Migration
  def change
  	add_column :schools, :esl, :boolean
  end
end
