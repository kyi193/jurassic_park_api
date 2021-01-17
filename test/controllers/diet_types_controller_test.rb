require "test_helper"

class DietTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diet_type = diet_types(:one)
  end

  test "should get index" do
    get diet_types_url
    assert_response :success
  end

  test "should get new" do
    get new_diet_type_url
    assert_response :success
  end

  test "should create diet_type" do
    assert_difference('DietType.count') do
      post diet_types_url, params: { diet_type: { name: @diet_type.name } }
    end

    assert_redirected_to diet_type_url(DietType.last)
  end

  test "should show diet_type" do
    get diet_type_url(@diet_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_diet_type_url(@diet_type)
    assert_response :success
  end

  test "should update diet_type" do
    patch diet_type_url(@diet_type), params: { diet_type: { name: @diet_type.name } }
    assert_redirected_to diet_type_url(@diet_type)
  end

  test "should destroy diet_type" do
    assert_difference('DietType.count', -1) do
      delete diet_type_url(@diet_type)
    end

    assert_redirected_to diet_types_url
  end
end
