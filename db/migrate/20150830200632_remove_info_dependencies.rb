class RemoveInfoDependencies < ActiveRecord::Migration
  def change
  	remove_index(:schools, :name => 'index_schools_on_info_id')
  end
end
