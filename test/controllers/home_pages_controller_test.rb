require 'test_helper'

class HomePagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_titile = "Intership"
  end

  test "should get home" do
    get home_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_titile}"
  end

  test "should get help" do
    get home_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_titile}"
  end

  test "should get about" do
    get home_pages_help_url
    assert_response :success
  end
end
