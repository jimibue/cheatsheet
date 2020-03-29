require 'test_helper'

class Api::SubTopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_sub_topics_show_url
    assert_response :success
  end

end
