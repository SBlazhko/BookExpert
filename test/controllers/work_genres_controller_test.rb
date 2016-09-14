require 'test_helper'

class WorkGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get work_genres_index_url
    assert_response :success
  end

  test "should get create" do
    get work_genres_create_url
    assert_response :success
  end

  test "should get update" do
    get work_genres_update_url
    assert_response :success
  end

  test "should get destroy" do
    get work_genres_destroy_url
    assert_response :success
  end

end
