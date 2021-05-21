require 'test_helper'

class HomeAppliancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_appliance = home_appliances(:one)
  end

  test "should get index" do
    get home_appliances_url
    assert_response :success
  end

  test "should get new" do
    get new_home_appliance_url
    assert_response :success
  end

  test "should create home_appliance" do
    assert_difference('HomeAppliance.count') do
      post home_appliances_url, params: { home_appliance: { brandname: @home_appliance.brandname, condition: @home_appliance.condition, description: @home_appliance.description, image: @home_appliance.image, location: @home_appliance.location } }
    end

    assert_redirected_to home_appliance_url(HomeAppliance.last)
  end

  test "should show home_appliance" do
    get home_appliance_url(@home_appliance)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_appliance_url(@home_appliance)
    assert_response :success
  end

  test "should update home_appliance" do
    patch home_appliance_url(@home_appliance), params: { home_appliance: { brandname: @home_appliance.brandname, condition: @home_appliance.condition, description: @home_appliance.description, image: @home_appliance.image, location: @home_appliance.location } }
    assert_redirected_to home_appliance_url(@home_appliance)
  end

  test "should destroy home_appliance" do
    assert_difference('HomeAppliance.count', -1) do
      delete home_appliance_url(@home_appliance)
    end

    assert_redirected_to home_appliances_url
  end
end
