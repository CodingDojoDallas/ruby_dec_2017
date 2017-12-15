require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get process_survey" do
    get :process_survey
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
