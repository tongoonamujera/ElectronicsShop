require 'test_helper'

class HeadphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headphone = headphones(:one)
  end

  test "should get index" do
    get headphones_url
    assert_response :success
  end

  test "should get new" do
    get new_headphone_url
    assert_response :success
  end

  test "should create headphone" do
    assert_difference('Headphone.count') do
      post headphones_url, params: { headphone: { brandname: @headphone.brandname, condition: @headphone.condition, description: @headphone.description, image: @headphone.image, location: @headphone.location } }
    end

    assert_redirected_to headphone_url(Headphone.last)
  end

  test "should show headphone" do
    get headphone_url(@headphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_headphone_url(@headphone)
    assert_response :success
  end

  test "should update headphone" do
    patch headphone_url(@headphone), params: { headphone: { brandname: @headphone.brandname, condition: @headphone.condition, description: @headphone.description, image: @headphone.image, location: @headphone.location } }
    assert_redirected_to headphone_url(@headphone)
  end

  test "should destroy headphone" do
    assert_difference('Headphone.count', -1) do
      delete headphone_url(@headphone)
    end

    assert_redirected_to headphones_url
  end
end
