require 'test_helper'

class CustomsControllerTest < ActionController::TestCase
  setup do
    @custom = customs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom" do
    assert_difference('Custom.count') do
      post :create, custom: { concept_text_en: @custom.concept_text_en, concept_text_fr: @custom.concept_text_fr, concept_text_nl: @custom.concept_text_nl, concept_title_en: @custom.concept_title_en, concept_title_fr: @custom.concept_title_fr, concept_title_nl: @custom.concept_title_nl, home_text_en: @custom.home_text_en, home_text_fr: @custom.home_text_fr, home_text_nl: @custom.home_text_nl, step_four_text_en: @custom.step_four_text_en, step_four_text_fr: @custom.step_four_text_fr, step_four_text_nl: @custom.step_four_text_nl, step_four_title_en: @custom.step_four_title_en, step_four_title_fr: @custom.step_four_title_fr, step_four_title_nl: @custom.step_four_title_nl, step_one_text_en: @custom.step_one_text_en, step_one_text_fr: @custom.step_one_text_fr, step_one_text_nl: @custom.step_one_text_nl, step_one_three_nl: @custom.step_one_three_nl, step_one_title_en: @custom.step_one_title_en, step_one_title_fr: @custom.step_one_title_fr, step_one_title_nl: @custom.step_one_title_nl, step_three_text_en: @custom.step_three_text_en, step_three_text_fr: @custom.step_three_text_fr, step_three_title_en: @custom.step_three_title_en, step_three_title_fr: @custom.step_three_title_fr, step_three_title_nl: @custom.step_three_title_nl, step_two_text_en: @custom.step_two_text_en, step_two_text_fr: @custom.step_two_text_fr, step_two_text_nl: @custom.step_two_text_nl, step_two_title_en: @custom.step_two_title_en, step_two_title_fr: @custom.step_two_title_fr, step_two_title_nl: @custom.step_two_title_nl }
    end

    assert_redirected_to custom_path(assigns(:custom))
  end

  test "should show custom" do
    get :show, id: @custom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom
    assert_response :success
  end

  test "should update custom" do
    patch :update, id: @custom, custom: { concept_text_en: @custom.concept_text_en, concept_text_fr: @custom.concept_text_fr, concept_text_nl: @custom.concept_text_nl, concept_title_en: @custom.concept_title_en, concept_title_fr: @custom.concept_title_fr, concept_title_nl: @custom.concept_title_nl, home_text_en: @custom.home_text_en, home_text_fr: @custom.home_text_fr, home_text_nl: @custom.home_text_nl, step_four_text_en: @custom.step_four_text_en, step_four_text_fr: @custom.step_four_text_fr, step_four_text_nl: @custom.step_four_text_nl, step_four_title_en: @custom.step_four_title_en, step_four_title_fr: @custom.step_four_title_fr, step_four_title_nl: @custom.step_four_title_nl, step_one_text_en: @custom.step_one_text_en, step_one_text_fr: @custom.step_one_text_fr, step_one_text_nl: @custom.step_one_text_nl, step_one_three_nl: @custom.step_one_three_nl, step_one_title_en: @custom.step_one_title_en, step_one_title_fr: @custom.step_one_title_fr, step_one_title_nl: @custom.step_one_title_nl, step_three_text_en: @custom.step_three_text_en, step_three_text_fr: @custom.step_three_text_fr, step_three_title_en: @custom.step_three_title_en, step_three_title_fr: @custom.step_three_title_fr, step_three_title_nl: @custom.step_three_title_nl, step_two_text_en: @custom.step_two_text_en, step_two_text_fr: @custom.step_two_text_fr, step_two_text_nl: @custom.step_two_text_nl, step_two_title_en: @custom.step_two_title_en, step_two_title_fr: @custom.step_two_title_fr, step_two_title_nl: @custom.step_two_title_nl }
    assert_redirected_to custom_path(assigns(:custom))
  end

  test "should destroy custom" do
    assert_difference('Custom.count', -1) do
      delete :destroy, id: @custom
    end

    assert_redirected_to customs_path
  end
end
