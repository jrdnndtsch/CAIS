class AddFeaturedImageUrlToSchool < ActiveRecord::Migration
  def change
  	add_column :schools, :featured_image_url, :string
  end
end
