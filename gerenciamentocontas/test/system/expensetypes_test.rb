require "application_system_test_case"

class ExpensetypesTest < ApplicationSystemTestCase
  setup do
    @expensetype = expensetypes(:one)
  end

  test "visiting the index" do
    visit expensetypes_url
    assert_selector "h1", text: "Expensetypes"
  end

  test "creating a Expensetype" do
    visit expensetypes_url
    click_on "New Expensetype"

    fill_in "Tipo receita", with: @expensetype.tipo_receita
    click_on "Create Expensetype"

    assert_text "Expensetype was successfully created"
    click_on "Back"
  end

  test "updating a Expensetype" do
    visit expensetypes_url
    click_on "Edit", match: :first

    fill_in "Tipo receita", with: @expensetype.tipo_receita
    click_on "Update Expensetype"

    assert_text "Expensetype was successfully updated"
    click_on "Back"
  end

  test "destroying a Expensetype" do
    visit expensetypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expensetype was successfully destroyed"
  end
end
