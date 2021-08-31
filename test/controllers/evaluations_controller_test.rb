require "test_helper"

class EvaluationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get evaluations_new_url
    assert_response :success
  end

  test "should get create" do
    get evaluations_create_url
    assert_response :success
  end

  test "should get edit" do
    get evaluations_edit_url
    assert_response :success
  end

  test "should get update" do
    get evaluations_update_url
    assert_response :success
  end
end
