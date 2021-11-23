require "application_system_test_case"

class FrogsTest < ApplicationSystemTestCase
  setup do
    @frog = frogs(:one)
  end

  test "visiting the index" do
    visit frogs_url
    assert_selector "h1", text: "Frogs"
  end

  test "creating a Frog" do
    visit frogs_url
    click_on "New Frog"

    fill_in "Name", with: @frog.name
    click_on "Create Frog"

    assert_text "Frog was successfully created"
    click_on "Back"
  end

  test "updating a Frog" do
    visit frogs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @frog.name
    click_on "Update Frog"

    assert_text "Frog was successfully updated"
    click_on "Back"
  end

  test "destroying a Frog" do
    visit frogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frog was successfully destroyed"
  end
end
