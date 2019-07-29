require "application_system_test_case"

class PashirisTest < ApplicationSystemTestCase
  setup do
    @pashiri = pashiris(:one)
  end

  test "visiting the index" do
    visit pashiris_url
    assert_selector "h1", text: "Pashiris"
  end

  test "creating a Pashiri" do
    visit pashiris_url
    click_on "New Pashiri"

    fill_in "Iraisha", with: @pashiri.iraisha
    fill_in "Name", with: @pashiri.name
    click_on "Create Pashiri"

    assert_text "Pashiri was successfully created"
    click_on "Back"
  end

  test "updating a Pashiri" do
    visit pashiris_url
    click_on "Edit", match: :first

    fill_in "Iraisha", with: @pashiri.iraisha
    fill_in "Name", with: @pashiri.name
    click_on "Update Pashiri"

    assert_text "Pashiri was successfully updated"
    click_on "Back"
  end

  test "destroying a Pashiri" do
    visit pashiris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pashiri was successfully destroyed"
  end
end
