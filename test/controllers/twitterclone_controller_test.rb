require 'test_helper'

class TwittercloneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twitterclone_index_url
    assert_response :success
  end

end
