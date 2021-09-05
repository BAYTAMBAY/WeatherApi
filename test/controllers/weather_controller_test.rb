require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get api" do
    get weather_api_url
    assert_response :success
  end
end
