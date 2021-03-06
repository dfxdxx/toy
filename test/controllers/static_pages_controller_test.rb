require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Just for fun'
  end


  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end

  test "shuld get test" do
    get static_pages_test_url
    assert_response :success
  end
end
