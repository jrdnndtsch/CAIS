class AddPaperclipGem < ActiveRecord::Migration
  def change
  	add_attachment :schools, :featured
  end
end
