require 'test_helper'

class VisualGabaritsControllerTest < ActionController::TestCase
  setup do
    @visual_gabarit = visual_gabarits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visual_gabarits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visual_gabarit" do
    assert_difference('VisualGabarit.count') do
      post :create, visual_gabarit: { gabarit_id: @visual_gabarit.gabarit_id, visual_id: @visual_gabarit.visual_id }
    end

    assert_redirected_to visual_gabarit_path(assigns(:visual_gabarit))
  end

  test "should show visual_gabarit" do
    get :show, id: @visual_gabarit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visual_gabarit
    assert_response :success
  end

  test "should update visual_gabarit" do
    patch :update, id: @visual_gabarit, visual_gabarit: { gabarit_id: @visual_gabarit.gabarit_id, visual_id: @visual_gabarit.visual_id }
    assert_redirected_to visual_gabarit_path(assigns(:visual_gabarit))
  end

  test "should destroy visual_gabarit" do
    assert_difference('VisualGabarit.count', -1) do
      delete :destroy, id: @visual_gabarit
    end

    assert_redirected_to visual_gabarits_path
  end
end
