require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens login page" do
    get '/register'
    assert_response :success
  end
end
