require 'test_helper'

class SchoolRecreationsControllerTest < ActionController::TestCase
  setup do
    @school_recreation = school_recreations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_recreations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_recreation" do
    assert_difference('SchoolRecreation.count') do
      post :create, school_recreation: { recreation_id: @school_recreation.recreation_id, school_id: @school_recreation.school_id }
    end

    assert_redirected_to school_recreation_path(assigns(:school_recreation))
  end

  test "should show school_recreation" do
    get :show, id: @school_recreation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_recreation
    assert_response :success
  end

  test "should update school_recreation" do
    patch :update, id: @school_recreation, school_recreation: { recreation_id: @school_recreation.recreation_id, school_id: @school_recreation.school_id }
    assert_redirected_to school_recreation_path(assigns(:school_recreation))
  end

  test "should destroy school_recreation" do
    assert_difference('SchoolRecreation.count', -1) do
      delete :destroy, id: @school_recreation
    end

    assert_redirected_to school_recreations_path
  end
end
