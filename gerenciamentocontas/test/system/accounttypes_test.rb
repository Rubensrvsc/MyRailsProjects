require "application_system_test_case"

class AccounttypesTest < ApplicationSystemTestCase
  setup do
    @accounttype = accounttypes(:one)
  end

  test "visiting the index" do
    visit accounttypes_url
    assert_selector "h1", text: "Accounttypes"
  end

  test "creating a Accounttype" do
    visit accounttypes_url
    click_on "New Accounttype"

    fill_in "Tipo conta", with: @accounttype.tipo_conta
    click_on "Create Accounttype"

    assert_text "Accounttype was successfully created"
    click_on "Back"
  end

  test "updating a Accounttype" do
    visit accounttypes_url
    click_on "Edit", match: :first

    fill_in "Tipo conta", with: @accounttype.tipo_conta
    click_on "Update Accounttype"

    assert_text "Accounttype was successfully updated"
    click_on "Back"
  end

  test "destroying a Accounttype" do
    visit accounttypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accounttype was successfully destroyed"
  end
end
