class AddMetaDescriptionToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :meta_description, :string
  end
end
