require 'test_helper'

class ExpensetypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expensetype = expensetypes(:one)
  end

  test "should get index" do
    get expensetypes_url
    assert_response :success
  end

  test "should get new" do
    get new_expensetype_url
    assert_response :success
  end

  test "should create expensetype" do
    assert_difference('Expensetype.count') do
      post expensetypes_url, params: { expensetype: { tipo_receita: @expensetype.tipo_receita } }
    end

    assert_redirected_to expensetype_url(Expensetype.last)
  end

  test "should show expensetype" do
    get expensetype_url(@expensetype)
    assert_response :success
  end

  test "should get edit" do
    get edit_expensetype_url(@expensetype)
    assert_response :success
  end

  test "should update expensetype" do
    patch expensetype_url(@expensetype), params: { expensetype: { tipo_receita: @expensetype.tipo_receita } }
    assert_redirected_to expensetype_url(@expensetype)
  end

  test "should destroy expensetype" do
    assert_difference('Expensetype.count', -1) do
      delete expensetype_url(@expensetype)
    end

    assert_redirected_to expensetypes_url
  end
end
