require "application_system_test_case"

class CreatedDaysTest < ApplicationSystemTestCase
  setup do
    @created_day = created_days(:one)
  end

  test "visiting the index" do
    visit created_days_url
    assert_selector "h1", text: "Created Days"
  end

  test "creating a Created day" do
    visit created_days_url
    click_on "New Created Day"

    fill_in "Day", with: @created_day.day
    click_on "Create Created day"

    assert_text "Created day was successfully created"
    click_on "Back"
  end

  test "updating a Created day" do
    visit created_days_url
    click_on "Edit", match: :first

    fill_in "Day", with: @created_day.day
    click_on "Update Created day"

    assert_text "Created day was successfully updated"
    click_on "Back"
  end

  test "destroying a Created day" do
    visit created_days_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Created day was successfully destroyed"
  end
end
