require "application_system_test_case"

class DietTypesTest < ApplicationSystemTestCase
  setup do
    @diet_type = diet_types(:one)
  end

  test "visiting the index" do
    visit diet_types_url
    assert_selector "h1", text: "Diet Types"
  end

  test "creating a Diet type" do
    visit diet_types_url
    click_on "New Diet Type"

    fill_in "Name", with: @diet_type.name
    click_on "Create Diet type"

    assert_text "Diet type was successfully created"
    click_on "Back"
  end

  test "updating a Diet type" do
    visit diet_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @diet_type.name
    click_on "Update Diet type"

    assert_text "Diet type was successfully updated"
    click_on "Back"
  end

  test "destroying a Diet type" do
    visit diet_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diet type was successfully destroyed"
  end
end
