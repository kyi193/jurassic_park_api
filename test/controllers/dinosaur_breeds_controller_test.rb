require "test_helper"

class DinosaurBreedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dinosaur_breed = dinosaur_breeds(:one)
  end

  test "should get index" do
    get dinosaur_breeds_url
    assert_response :success
  end

  test "should get new" do
    get new_dinosaur_breed_url
    assert_response :success
  end

  test "should create dinosaur_breed" do
    assert_difference('DinosaurBreed.count') do
      post dinosaur_breeds_url, params: { dinosaur_breed: { name: @dinosaur_breed.name } }
    end

    assert_redirected_to dinosaur_breed_url(DinosaurBreed.last)
  end

  test "should show dinosaur_breed" do
    get dinosaur_breed_url(@dinosaur_breed)
    assert_response :success
  end

  test "should get edit" do
    get edit_dinosaur_breed_url(@dinosaur_breed)
    assert_response :success
  end

  test "should update dinosaur_breed" do
    patch dinosaur_breed_url(@dinosaur_breed), params: { dinosaur_breed: { name: @dinosaur_breed.name } }
    assert_redirected_to dinosaur_breed_url(@dinosaur_breed)
  end

  test "should destroy dinosaur_breed" do
    assert_difference('DinosaurBreed.count', -1) do
      delete dinosaur_breed_url(@dinosaur_breed)
    end

    assert_redirected_to dinosaur_breeds_url
  end
end
