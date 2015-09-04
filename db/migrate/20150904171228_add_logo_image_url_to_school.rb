class AddLogoImageUrlToSchool < ActiveRecord::Migration
  def change
  	add_column :schools, :logo_image_url, :string
  end
end
