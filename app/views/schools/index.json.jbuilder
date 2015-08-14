json.array!(@schools) do |school|
  json.extract! school, :id, :name, :street_address, :postal_code, :website_url, :contact_email, :description, :girls_boarding, :girls_day, :boys_boarding, :boys_day, :cmapus_size, :year_founded, :average_class_size, :student_teacher_ratio, :dress_code, :student_body, :seven_day_tuition, :five_day_tuition, :boarding_grades, :day_grades, :day_tuition, :accreditations, :advanced_placement, :international_bac, :payment_plans, :need_based_aid, :merit_scholarships
  json.url school_url(school, format: :json)
end
