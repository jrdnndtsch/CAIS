class AddColumnContactNametoSchool < ActiveRecord::Migration
  def change
  	add_column :schools, :contact_name, :string
  end
end
