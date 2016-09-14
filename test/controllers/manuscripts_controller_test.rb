require 'test_helper'

class ManuscriptsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get manuscripts_destroy_url
    assert_response :success
  end

  test "should get create" do
    get manuscripts_create_url
    assert_response :success
  end

  test "should get index" do
    get manuscripts_index_url
    assert_response :success
  end

  test "should get show" do
    get manuscripts_show_url
    assert_response :success
  end

  test "should get update" do
    get manuscripts_update_url
    assert_response :success
  end

end
