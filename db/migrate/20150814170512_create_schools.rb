class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :street_address
      t.string :postal_code
      t.string :website_url
      t.string :contact_email
      t.string :description
      t.integer :girls_boarding
      t.integer :girls_day
      t.integer :boys_boarding
      t.integer :boys_day
      t.integer :campus_size
      t.integer :year_founded
      t.integer :average_class_size
      t.integer :student_teacher_ratio
      t.boolean :dress_code
      t.string :student_body
      t.float :seven_day_tuition
      t.float :five_day_tuition
      t.string :boarding_grades
      t.string :day_grades
      t.float :day_tuition
      t.string :accreditations
      t.boolean :advanced_placement
      t.boolean :international_bac
      t.boolean :payment_plans
      t.boolean :need_based_aid
      t.boolean :merit_scholarships

      t.timestamps null: false
    end
  end
end
