require 'test_helper'

class TakeCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get take_comments_create_url
    assert_response :success
  end

  test "should get delete" do
    get take_comments_delete_url
    assert_response :success
  end

end
