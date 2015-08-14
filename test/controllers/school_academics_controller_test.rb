require 'test_helper'

class SchoolAcademicsControllerTest < ActionController::TestCase
  setup do
    @school_academic = school_academics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_academics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_academic" do
    assert_difference('SchoolAcademic.count') do
      post :create, school_academic: { academic_id: @school_academic.academic_id, school_id: @school_academic.school_id }
    end

    assert_redirected_to school_academic_path(assigns(:school_academic))
  end

  test "should show school_academic" do
    get :show, id: @school_academic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_academic
    assert_response :success
  end

  test "should update school_academic" do
    patch :update, id: @school_academic, school_academic: { academic_id: @school_academic.academic_id, school_id: @school_academic.school_id }
    assert_redirected_to school_academic_path(assigns(:school_academic))
  end

  test "should destroy school_academic" do
    assert_difference('SchoolAcademic.count', -1) do
      delete :destroy, id: @school_academic
    end

    assert_redirected_to school_academics_path
  end
end
