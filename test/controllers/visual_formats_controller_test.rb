require 'test_helper'

class VisualFormatsControllerTest < ActionController::TestCase
  setup do
    @visual_format = visual_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visual_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visual_format" do
    assert_difference('VisualFormat.count') do
      post :create, visual_format: { format_id: @visual_format.format_id, visual_id: @visual_format.visual_id }
    end

    assert_redirected_to visual_format_path(assigns(:visual_format))
  end

  test "should show visual_format" do
    get :show, id: @visual_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visual_format
    assert_response :success
  end

  test "should update visual_format" do
    patch :update, id: @visual_format, visual_format: { format_id: @visual_format.format_id, visual_id: @visual_format.visual_id }
    assert_redirected_to visual_format_path(assigns(:visual_format))
  end

  test "should destroy visual_format" do
    assert_difference('VisualFormat.count', -1) do
      delete :destroy, id: @visual_format
    end

    assert_redirected_to visual_formats_path
  end
end
