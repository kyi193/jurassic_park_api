require "application_system_test_case"

class CagesTest < ApplicationSystemTestCase
  setup do
    @cage = cages(:one)
  end

  test "visiting the index" do
    visit cages_url
    assert_selector "h1", text: "Cages"
  end

  test "creating a Cage" do
    visit cages_url
    click_on "New Cage"

    fill_in "Max capacity", with: @cage.max_capacity
    fill_in "Num of dinosaurs", with: @cage.num_of_dinosaurs
    click_on "Create Cage"

    assert_text "Cage was successfully created"
    click_on "Back"
  end

  test "updating a Cage" do
    visit cages_url
    click_on "Edit", match: :first

    fill_in "Max capacity", with: @cage.max_capacity
    fill_in "Num of dinosaurs", with: @cage.num_of_dinosaurs
    click_on "Update Cage"

    assert_text "Cage was successfully updated"
    click_on "Back"
  end

  test "destroying a Cage" do
    visit cages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cage was successfully destroyed"
  end
end
