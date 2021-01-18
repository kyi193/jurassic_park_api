require "test_helper"

class CageStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cage_status = cage_statuses(:one)
  end

  test "should get index" do
    get cage_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_cage_status_url
    assert_response :success
  end

  test "should create cage_status" do
    assert_difference('CageStatus.count') do
      post cage_statuses_url, params: { cage_status: { name: @cage_status.name } }
    end

    assert_redirected_to cage_status_url(CageStatus.last)
  end

  test "should show cage_status" do
    get cage_status_url(@cage_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_cage_status_url(@cage_status)
    assert_response :success
  end

  test "should update cage_status" do
    patch cage_status_url(@cage_status), params: { cage_status: { name: @cage_status.name } }
    assert_redirected_to cage_status_url(@cage_status)
  end

  test "should destroy cage_status" do
    assert_difference('CageStatus.count', -1) do
      delete cage_status_url(@cage_status)
    end

    assert_redirected_to cage_statuses_url
  end
end
