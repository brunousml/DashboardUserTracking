require 'test_helper'

class UsertracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usertrack = usertracks(:one)
  end

  test "should get index" do
    get usertracks_url
    assert_response :success
  end

  test "should get new" do
    get new_usertrack_url
    assert_response :success
  end

  test "should create usertrack" do
    assert_difference('Usertrack.count') do
      post usertracks_url, params: { usertrack: { datetime: @usertrack.datetime, guid: @usertrack.guid, url: @usertrack.url } }
    end

    assert_redirected_to usertrack_url(Usertrack.last)
  end

  test "should show usertrack" do
    get usertrack_url(@usertrack)
    assert_response :success
  end

  test "should get edit" do
    get edit_usertrack_url(@usertrack)
    assert_response :success
  end

  test "should update usertrack" do
    patch usertrack_url(@usertrack), params: { usertrack: { datetime: @usertrack.datetime, guid: @usertrack.guid, url: @usertrack.url } }
    assert_redirected_to usertrack_url(@usertrack)
  end

  test "should destroy usertrack" do
    assert_difference('Usertrack.count', -1) do
      delete usertrack_url(@usertrack)
    end

    assert_redirected_to usertracks_url
  end
end
