class AddColumnRecreationType < ActiveRecord::Migration
  def change
  	add_column :recreations, :recreation_type, :string
  end
end
