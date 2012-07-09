require 'test_helper'

class OutputSurveysControllerTest < ActionController::TestCase
  setup do
    @output_survey = output_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:output_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create output_survey" do
    assert_difference('OutputSurvey.count') do
      post :create, output_survey: {  }
    end

    assert_redirected_to output_survey_path(assigns(:output_survey))
  end

  test "should show output_survey" do
    get :show, id: @output_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @output_survey
    assert_response :success
  end

  test "should update output_survey" do
    put :update, id: @output_survey, output_survey: {  }
    assert_redirected_to output_survey_path(assigns(:output_survey))
  end

  test "should destroy output_survey" do
    assert_difference('OutputSurvey.count', -1) do
      delete :destroy, id: @output_survey
    end

    assert_redirected_to output_surveys_path
  end
end
