require 'test_helper'

class CellphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cellphone = cellphones(:one)
  end

  test "should get index" do
    get cellphones_url
    assert_response :success
  end

  test "should get new" do
    get new_cellphone_url
    assert_response :success
  end

  test "should create cellphone" do
    assert_difference('Cellphone.count') do
      post cellphones_url, params: { cellphone: { brandname: @cellphone.brandname, color: @cellphone.color, condition: @cellphone.condition, description: @cellphone.description, image: @cellphone.image, location: @cellphone.location, memory: @cellphone.memory } }
    end

    assert_redirected_to cellphone_url(Cellphone.last)
  end

  test "should show cellphone" do
    get cellphone_url(@cellphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_cellphone_url(@cellphone)
    assert_response :success
  end

  test "should update cellphone" do
    patch cellphone_url(@cellphone), params: { cellphone: { brandname: @cellphone.brandname, color: @cellphone.color, condition: @cellphone.condition, description: @cellphone.description, image: @cellphone.image, location: @cellphone.location, memory: @cellphone.memory } }
    assert_redirected_to cellphone_url(@cellphone)
  end

  test "should destroy cellphone" do
    assert_difference('Cellphone.count', -1) do
      delete cellphone_url(@cellphone)
    end

    assert_redirected_to cellphones_url
  end
end
