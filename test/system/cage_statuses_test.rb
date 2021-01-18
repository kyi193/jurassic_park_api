require "application_system_test_case"

class CageStatusesTest < ApplicationSystemTestCase
  setup do
    @cage_status = cage_statuses(:one)
  end

  test "visiting the index" do
    visit cage_statuses_url
    assert_selector "h1", text: "Cage Statuses"
  end

  test "creating a Cage status" do
    visit cage_statuses_url
    click_on "New Cage Status"

    fill_in "Name", with: @cage_status.name
    click_on "Create Cage status"

    assert_text "Cage status was successfully created"
    click_on "Back"
  end

  test "updating a Cage status" do
    visit cage_statuses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cage_status.name
    click_on "Update Cage status"

    assert_text "Cage status was successfully updated"
    click_on "Back"
  end

  test "destroying a Cage status" do
    visit cage_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cage status was successfully destroyed"
  end
end
