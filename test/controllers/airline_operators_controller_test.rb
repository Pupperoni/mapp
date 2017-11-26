require 'test_helper'

class AirlineOperatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airline_operator = airline_operators(:one)
  end

  test "should get index" do
    get airline_operators_url
    assert_response :success
  end

  test "should get new" do
    get new_airline_operator_url
    assert_response :success
  end

  test "should create airline_operator" do
    assert_difference('AirlineOperator.count') do
      post airline_operators_url, params: { airline_operator: {  } }
    end

    assert_redirected_to airline_operator_url(AirlineOperator.last)
  end

  test "should show airline_operator" do
    get airline_operator_url(@airline_operator)
    assert_response :success
  end

  test "should get edit" do
    get edit_airline_operator_url(@airline_operator)
    assert_response :success
  end

  test "should update airline_operator" do
    patch airline_operator_url(@airline_operator), params: { airline_operator: {  } }
    assert_redirected_to airline_operator_url(@airline_operator)
  end

  test "should destroy airline_operator" do
    assert_difference('AirlineOperator.count', -1) do
      delete airline_operator_url(@airline_operator)
    end

    assert_redirected_to airline_operators_url
  end
end
