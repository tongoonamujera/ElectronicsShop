require "application_system_test_case"

class CellphonesTest < ApplicationSystemTestCase
  setup do
    @cellphone = cellphones(:one)
  end

  test "visiting the index" do
    visit cellphones_url
    assert_selector "h1", text: "Cellphones"
  end

  test "creating a Cellphone" do
    visit cellphones_url
    click_on "New Cellphone"

    fill_in "Brandname", with: @cellphone.brandname
    fill_in "Color", with: @cellphone.color
    fill_in "Condition", with: @cellphone.condition
    fill_in "Description", with: @cellphone.description
    fill_in "Image", with: @cellphone.image
    fill_in "Location", with: @cellphone.location
    fill_in "Memory", with: @cellphone.memory
    click_on "Create Cellphone"

    assert_text "Cellphone was successfully created"
    click_on "Back"
  end

  test "updating a Cellphone" do
    visit cellphones_url
    click_on "Edit", match: :first

    fill_in "Brandname", with: @cellphone.brandname
    fill_in "Color", with: @cellphone.color
    fill_in "Condition", with: @cellphone.condition
    fill_in "Description", with: @cellphone.description
    fill_in "Image", with: @cellphone.image
    fill_in "Location", with: @cellphone.location
    fill_in "Memory", with: @cellphone.memory
    click_on "Update Cellphone"

    assert_text "Cellphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Cellphone" do
    visit cellphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cellphone was successfully destroyed"
  end
end
