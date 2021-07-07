require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_path
    assert_response :success
    assert_select("title", "Home | Rails tutorial")
  end

  test "should get help" do
    get static_pages_help_path
    assert_response :success
    assert_select("title", "Help | Rails tutorial")
  end

  test "should get about" do
    get static_pages_about_path
    assert_response :success
    assert_select("title", "Rails tutorial")
  end
end
