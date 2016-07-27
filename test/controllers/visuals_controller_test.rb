require 'test_helper'

class VisualsControllerTest < ActionController::TestCase
  setup do
    @visual = visuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visual" do
    assert_difference('Visual.count') do
      post :create, visual: { artist_id: @visual.artist_id, is_drawing: @visual.is_drawing, is_picture: @visual.is_picture, name: @visual.name, price: @visual.price }
    end

    assert_redirected_to visual_path(assigns(:visual))
  end

  test "should show visual" do
    get :show, id: @visual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visual
    assert_response :success
  end

  test "should update visual" do
    patch :update, id: @visual, visual: { artist_id: @visual.artist_id, is_drawing: @visual.is_drawing, is_picture: @visual.is_picture, name: @visual.name, price: @visual.price }
    assert_redirected_to visual_path(assigns(:visual))
  end

  test "should destroy visual" do
    assert_difference('Visual.count', -1) do
      delete :destroy, id: @visual
    end

    assert_redirected_to visuals_path
  end
end
