class AddHeaderImageToSchools < ActiveRecord::Migration
  def change
  	add_attachment :schools, :header_image
  end
end
