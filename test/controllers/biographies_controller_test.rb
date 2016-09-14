require 'test_helper'

class BiographiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get biographies_index_url
    assert_response :success
  end

  test "should get create" do
    get biographies_create_url
    assert_response :success
  end

  test "should get update" do
    get biographies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get biographies_destroy_url
    assert_response :success
  end

end
