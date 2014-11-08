require 'test_helper'

class ThingTypesControllerTest < ActionController::TestCase
  setup do
    @thing_type = thing_types(:one)
    # Sign in
    @user = users(:user_1)
    sign_in :user, @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thing_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thing_type" do
    assert_difference('ThingType.count') do
      post :create, thing_type: { name: @thing_type.name }
    end

    assert_redirected_to thing_type_path(assigns(:thing_type))
  end

  test "should show thing_type" do
    get :show, id: @thing_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thing_type
    assert_response :success
  end

  test "should update thing_type" do
    patch :update, id: @thing_type, thing_type: { name: @thing_type.name }
    assert_redirected_to thing_type_path(assigns(:thing_type))
  end

  test "should destroy thing_type" do
    assert_difference('ThingType.count', -1) do
      delete :destroy, id: @thing_type
    end

    assert_redirected_to thing_types_path
  end
end
