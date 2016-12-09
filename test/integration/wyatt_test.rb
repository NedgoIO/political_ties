require 'test_helper'

class WyattTest < ActionDispatch::IntegrationTest
  test "shows specific message when visiting '/wyatt'" do
    get "/wyatt"
    assert_response :success

    assert_select "p", "Hi James!"
  end
end
