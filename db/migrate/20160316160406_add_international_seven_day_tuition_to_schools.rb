class AddInternationalSevenDayTuitionToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :international_seven_day_tuition, :float, default: 0.0
  end
end
