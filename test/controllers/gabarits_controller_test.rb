require 'test_helper'

class GabaritsControllerTest < ActionController::TestCase
  setup do
    @gabarit = gabarits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gabarits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gabarit" do
    assert_difference('Gabarit.count') do
      post :create, gabarit: { name: @gabarit.name }
    end

    assert_redirected_to gabarit_path(assigns(:gabarit))
  end

  test "should show gabarit" do
    get :show, id: @gabarit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gabarit
    assert_response :success
  end

  test "should update gabarit" do
    patch :update, id: @gabarit, gabarit: { name: @gabarit.name }
    assert_redirected_to gabarit_path(assigns(:gabarit))
  end

  test "should destroy gabarit" do
    assert_difference('Gabarit.count', -1) do
      delete :destroy, id: @gabarit
    end

    assert_redirected_to gabarits_path
  end
end
