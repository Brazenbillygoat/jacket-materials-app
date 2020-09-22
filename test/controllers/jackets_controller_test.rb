require 'test_helper'

class JacketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jackets_index_url
    assert_response :success
  end

  test "should get show" do
    get jackets_show_url
    assert_response :success
  end

  test "should get new" do
    get jackets_new_url
    assert_response :success
  end

  test "should get edit" do
    get jackets_edit_url
    assert_response :success
  end

  test "should get update" do
    get jackets_update_url
    assert_response :success
  end

  test "should get create" do
    get jackets_create_url
    assert_response :success
  end

end
