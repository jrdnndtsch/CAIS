class AddRecreationsTypeToRecreations < ActiveRecord::Migration
  def change
    add_reference :recreations, :recreation_type, index: true, foreign_key: true
  end
end
