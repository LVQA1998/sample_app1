require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_name = "Ruby on rails Tutorial Sample App"
  end

  test "should get home" do
    get static_page_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_name}" 

  end

  test "should get help" do
    get static_page_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_name}" 

  end

  test "should get about" do 
    get static_page_about_url
    assert_response:success
    assert_select "title", "About | #{@base_name}" 
  end
end
