require 'test_helper'

class GiveCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get give_comments_create_url
    assert_response :success
  end

  test "should get delete" do
    get give_comments_delete_url
    assert_response :success
  end

end
