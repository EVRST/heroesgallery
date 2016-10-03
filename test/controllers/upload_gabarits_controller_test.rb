require 'test_helper'

class UploadGabaritsControllerTest < ActionController::TestCase
  setup do
    @upload_gabarit = upload_gabarits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upload_gabarits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upload_gabarit" do
    assert_difference('UploadGabarit.count') do
      post :create, upload_gabarit: { gabarit_id: @upload_gabarit.gabarit_id, upload_id: @upload_gabarit.upload_id }
    end

    assert_redirected_to upload_gabarit_path(assigns(:upload_gabarit))
  end

  test "should show upload_gabarit" do
    get :show, id: @upload_gabarit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upload_gabarit
    assert_response :success
  end

  test "should update upload_gabarit" do
    patch :update, id: @upload_gabarit, upload_gabarit: { gabarit_id: @upload_gabarit.gabarit_id, upload_id: @upload_gabarit.upload_id }
    assert_redirected_to upload_gabarit_path(assigns(:upload_gabarit))
  end

  test "should destroy upload_gabarit" do
    assert_difference('UploadGabarit.count', -1) do
      delete :destroy, id: @upload_gabarit
    end

    assert_redirected_to upload_gabarits_path
  end
end
