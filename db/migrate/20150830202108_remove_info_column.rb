class RemoveInfoColumn < ActiveRecord::Migration
  def change
  	remove_column :schools, :info_id
  end
end
