require "test_helper"

class AuhtorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auhtors_index_url
    assert_response :success
  end

  test "should get new" do
    get auhtors_new_url
    assert_response :success
  end

  test "should get delete" do
    get auhtors_delete_url
    assert_response :success
  end

  test "should get querry_books" do
    get auhtors_querry_books_url
    assert_response :success
  end
end
