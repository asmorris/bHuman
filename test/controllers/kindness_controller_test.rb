require 'test_helper'

class KindnessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kindness_index_url
    assert_response :success
  end

  test "should get daily" do
    get kindness_daily_url
    assert_response :success
  end

  test "should get weekly" do
    get kindness_weekly_url
    assert_response :success
  end

  test "should get monthly" do
    get kindness_monthly_url
    assert_response :success
  end

  test "should get all_time" do
    get kindness_all_time_url
    assert_response :success
  end

end
