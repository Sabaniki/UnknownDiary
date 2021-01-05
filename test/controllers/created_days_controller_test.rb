require 'test_helper'

class CreatedDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @created_day = created_days(:one)
  end

  test "should get index" do
    get created_days_url
    assert_response :success
  end

  test "should get new" do
    get new_created_day_url
    assert_response :success
  end

  test "should create created_day" do
    assert_difference('CreatedDay.count') do
      post created_days_url, params: { created_day: { day: @created_day.day } }
    end

    assert_redirected_to created_day_url(CreatedDay.last)
  end

  test "should show created_day" do
    get created_day_url(@created_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_created_day_url(@created_day)
    assert_response :success
  end

  test "should update created_day" do
    patch created_day_url(@created_day), params: { created_day: { day: @created_day.day } }
    assert_redirected_to created_day_url(@created_day)
  end

  test "should destroy created_day" do
    assert_difference('CreatedDay.count', -1) do
      delete created_day_url(@created_day)
    end

    assert_redirected_to created_days_url
  end
end
