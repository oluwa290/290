require "application_system_test_case"

class BmwsTest < ApplicationSystemTestCase
  setup do
    @bmw = bmws(:one)
  end

  test "visiting the index" do
    visit bmws_url
    assert_selector "h1", text: "Bmws"
  end

  test "creating a Bmw" do
    visit bmws_url
    click_on "New Bmw"

    fill_in "X6", with: @bmw.X6
    fill_in "Make", with: @bmw.make
    fill_in "Model", with: @bmw.model
    fill_in "Year", with: @bmw.year
    click_on "Create Bmw"

    assert_text "Bmw was successfully created"
    click_on "Back"
  end

  test "updating a Bmw" do
    visit bmws_url
    click_on "Edit", match: :first

    fill_in "X6", with: @bmw.X6
    fill_in "Make", with: @bmw.make
    fill_in "Model", with: @bmw.model
    fill_in "Year", with: @bmw.year
    click_on "Update Bmw"

    assert_text "Bmw was successfully updated"
    click_on "Back"
  end

  test "destroying a Bmw" do
    visit bmws_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bmw was successfully destroyed"
  end
end
