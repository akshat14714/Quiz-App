require 'test_helper'

class GenreDisplayControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get genre_display_new_url
    assert_response :success
  end

  test "should get show" do
    get genre_display_show_url
    assert_response :success
  end

end
