class DropInfoTable < ActiveRecord::Migration
  def change
  	drop_table :infos
  end
end
