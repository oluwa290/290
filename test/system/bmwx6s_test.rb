require "application_system_test_case"

class Bmwx6sTest < ApplicationSystemTestCase
  setup do
    @bmwx6 = bmwx6s(:one)
  end

  test "visiting the index" do
    visit bmwx6s_url
    assert_selector "h1", text: "Bmwx6s"
  end

  test "creating a Bmwx6" do
    visit bmwx6s_url
    click_on "New Bmwx6"

    fill_in "Make", with: @bmwx6.make
    fill_in "Model", with: @bmwx6.model
    fill_in "Year", with: @bmwx6.year
    click_on "Create Bmwx6"

    assert_text "Bmwx6 was successfully created"
    click_on "Back"
  end

  test "updating a Bmwx6" do
    visit bmwx6s_url
    click_on "Edit", match: :first

    fill_in "Make", with: @bmwx6.make
    fill_in "Model", with: @bmwx6.model
    fill_in "Year", with: @bmwx6.year
    click_on "Update Bmwx6"

    assert_text "Bmwx6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bmwx6" do
    visit bmwx6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bmwx6 was successfully destroyed"
  end
end
