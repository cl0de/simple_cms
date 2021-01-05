require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get yo" do
    get hello_yo_url
    assert_response :success
  end

end
