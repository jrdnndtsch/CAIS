require 'test_helper'

class SchoolCampusControllerTest < ActionController::TestCase
  setup do
    @school_campu = school_campus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_campus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_campu" do
    assert_difference('SchoolCampu.count') do
      post :create, school_campu: { campu: @school_campu.campu, school: @school_campu.school }
    end

    assert_redirected_to school_campu_path(assigns(:school_campu))
  end

  test "should show school_campu" do
    get :show, id: @school_campu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_campu
    assert_response :success
  end

  test "should update school_campu" do
    patch :update, id: @school_campu, school_campu: { campu: @school_campu.campu, school: @school_campu.school }
    assert_redirected_to school_campu_path(assigns(:school_campu))
  end

  test "should destroy school_campu" do
    assert_difference('SchoolCampu.count', -1) do
      delete :destroy, id: @school_campu
    end

    assert_redirected_to school_campus_path
  end
end
