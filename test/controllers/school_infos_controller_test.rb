require 'test_helper'

class SchoolInfosControllerTest < ActionController::TestCase
  setup do
    @school_info = school_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_info" do
    assert_difference('SchoolInfo.count') do
      post :create, school_info: { info_id: @school_info.info_id, school_id: @school_info.school_id }
    end

    assert_redirected_to school_info_path(assigns(:school_info))
  end

  test "should show school_info" do
    get :show, id: @school_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_info
    assert_response :success
  end

  test "should update school_info" do
    patch :update, id: @school_info, school_info: { info_id: @school_info.info_id, school_id: @school_info.school_id }
    assert_redirected_to school_info_path(assigns(:school_info))
  end

  test "should destroy school_info" do
    assert_difference('SchoolInfo.count', -1) do
      delete :destroy, id: @school_info
    end

    assert_redirected_to school_infos_path
  end
end
