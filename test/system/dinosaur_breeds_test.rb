require "application_system_test_case"

class DinosaurBreedsTest < ApplicationSystemTestCase
  setup do
    @dinosaur_breed = dinosaur_breeds(:one)
  end

  test "visiting the index" do
    visit dinosaur_breeds_url
    assert_selector "h1", text: "Dinosaur Breeds"
  end

  test "creating a Dinosaur breed" do
    visit dinosaur_breeds_url
    click_on "New Dinosaur Breed"

    fill_in "Name", with: @dinosaur_breed.name
    click_on "Create Dinosaur breed"

    assert_text "Dinosaur breed was successfully created"
    click_on "Back"
  end

  test "updating a Dinosaur breed" do
    visit dinosaur_breeds_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dinosaur_breed.name
    click_on "Update Dinosaur breed"

    assert_text "Dinosaur breed was successfully updated"
    click_on "Back"
  end

  test "destroying a Dinosaur breed" do
    visit dinosaur_breeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dinosaur breed was successfully destroyed"
  end
end
