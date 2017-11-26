require 'test_helper'

class ImplementingOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @implementing_office = implementing_offices(:one)
  end

  test "should get index" do
    get implementing_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_implementing_office_url
    assert_response :success
  end

  test "should create implementing_office" do
    assert_difference('ImplementingOffice.count') do
      post implementing_offices_url, params: { implementing_office: {  } }
    end

    assert_redirected_to implementing_office_url(ImplementingOffice.last)
  end

  test "should show implementing_office" do
    get implementing_office_url(@implementing_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_implementing_office_url(@implementing_office)
    assert_response :success
  end

  test "should update implementing_office" do
    patch implementing_office_url(@implementing_office), params: { implementing_office: {  } }
    assert_redirected_to implementing_office_url(@implementing_office)
  end

  test "should destroy implementing_office" do
    assert_difference('ImplementingOffice.count', -1) do
      delete implementing_office_url(@implementing_office)
    end

    assert_redirected_to implementing_offices_url
  end
end
