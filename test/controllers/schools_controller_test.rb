require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school" do
    assert_difference('School.count') do
      post :create, school: { accreditations: @school.accreditations, advanced_placement: @school.advanced_placement, average_class_size: @school.average_class_size, boarding_grades: @school.boarding_grades, boys_boarding: @school.boys_boarding, boys_day: @school.boys_day, cmapus_size: @school.cmapus_size, contact_email: @school.contact_email, day_grades: @school.day_grades, day_tuition: @school.day_tuition, description: @school.description, dress_code: @school.dress_code, five_day_tuition: @school.five_day_tuition, girls_boarding: @school.girls_boarding, girls_day: @school.girls_day, international_bac: @school.international_bac, merit_scholarships: @school.merit_scholarships, name: @school.name, need_based_aid: @school.need_based_aid, payment_plans: @school.payment_plans, postal_code: @school.postal_code, seven_day_tuition: @school.seven_day_tuition, street_address: @school.street_address, student_body: @school.student_body, student_teacher_ratio: @school.student_teacher_ratio, website_url: @school.website_url, year_founded: @school.year_founded }
    end

    assert_redirected_to school_path(assigns(:school))
  end

  test "should show school" do
    get :show, id: @school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school
    assert_response :success
  end

  test "should update school" do
    patch :update, id: @school, school: { accreditations: @school.accreditations, advanced_placement: @school.advanced_placement, average_class_size: @school.average_class_size, boarding_grades: @school.boarding_grades, boys_boarding: @school.boys_boarding, boys_day: @school.boys_day, cmapus_size: @school.cmapus_size, contact_email: @school.contact_email, day_grades: @school.day_grades, day_tuition: @school.day_tuition, description: @school.description, dress_code: @school.dress_code, five_day_tuition: @school.five_day_tuition, girls_boarding: @school.girls_boarding, girls_day: @school.girls_day, international_bac: @school.international_bac, merit_scholarships: @school.merit_scholarships, name: @school.name, need_based_aid: @school.need_based_aid, payment_plans: @school.payment_plans, postal_code: @school.postal_code, seven_day_tuition: @school.seven_day_tuition, street_address: @school.street_address, student_body: @school.student_body, student_teacher_ratio: @school.student_teacher_ratio, website_url: @school.website_url, year_founded: @school.year_founded }
    assert_redirected_to school_path(assigns(:school))
  end

  test "should destroy school" do
    assert_difference('School.count', -1) do
      delete :destroy, id: @school
    end

    assert_redirected_to schools_path
  end
end
