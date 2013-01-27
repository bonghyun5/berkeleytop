require 'test_helper'

class RushApplicationsControllerTest < ActionController::TestCase
  setup do
    @rush_application = rush_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rush_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rush_application" do
    assert_difference('RushApplication.count') do
      post :create, rush_application: { address: @rush_application.address, email: @rush_application.email, mobile_number: @rush_application.mobile_number, name: @rush_application.name, phone_number: @rush_application.phone_number, question1: @rush_application.question1, question2: @rush_application.question2, question3: @rush_application.question3, sex: @rush_application.sex }
    end

    assert_redirected_to rush_application_path(assigns(:rush_application))
  end

  test "should show rush_application" do
    get :show, id: @rush_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rush_application
    assert_response :success
  end

  test "should update rush_application" do
    put :update, id: @rush_application, rush_application: { address: @rush_application.address, email: @rush_application.email, mobile_number: @rush_application.mobile_number, name: @rush_application.name, phone_number: @rush_application.phone_number, question1: @rush_application.question1, question2: @rush_application.question2, question3: @rush_application.question3, sex: @rush_application.sex }
    assert_redirected_to rush_application_path(assigns(:rush_application))
  end

  test "should destroy rush_application" do
    assert_difference('RushApplication.count', -1) do
      delete :destroy, id: @rush_application
    end

    assert_redirected_to rush_applications_path
  end
end
