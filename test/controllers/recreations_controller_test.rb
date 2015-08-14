require 'test_helper'

class RecreationsControllerTest < ActionController::TestCase
  setup do
    @recreation = recreations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recreations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recreation" do
    assert_difference('Recreation.count') do
      post :create, recreation: { activity: @recreation.activity, type: @recreation.type }
    end

    assert_redirected_to recreation_path(assigns(:recreation))
  end

  test "should show recreation" do
    get :show, id: @recreation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recreation
    assert_response :success
  end

  test "should update recreation" do
    patch :update, id: @recreation, recreation: { activity: @recreation.activity, type: @recreation.type }
    assert_redirected_to recreation_path(assigns(:recreation))
  end

  test "should destroy recreation" do
    assert_difference('Recreation.count', -1) do
      delete :destroy, id: @recreation
    end

    assert_redirected_to recreations_path
  end
end
