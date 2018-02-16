require 'test_helper'

class CryptolistsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get cryptolists_search_url
    assert_response :success
  end

  test "should get home" do
    get cryptolists_home_url
    assert_response :success
  end

end
