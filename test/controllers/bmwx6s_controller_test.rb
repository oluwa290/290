require 'test_helper'

class Bmwx6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bmwx6 = bmwx6s(:one)
  end

  test "should get index" do
    get bmwx6s_url
    assert_response :success
  end

  test "should get new" do
    get new_bmwx6_url
    assert_response :success
  end

  test "should create bmwx6" do
    assert_difference('Bmwx6.count') do
      post bmwx6s_url, params: { bmwx6: { make: @bmwx6.make, model: @bmwx6.model, year: @bmwx6.year } }
    end

    assert_redirected_to bmwx6_url(Bmwx6.last)
  end

  test "should show bmwx6" do
    get bmwx6_url(@bmwx6)
    assert_response :success
  end

  test "should get edit" do
    get edit_bmwx6_url(@bmwx6)
    assert_response :success
  end

  test "should update bmwx6" do
    patch bmwx6_url(@bmwx6), params: { bmwx6: { make: @bmwx6.make, model: @bmwx6.model, year: @bmwx6.year } }
    assert_redirected_to bmwx6_url(@bmwx6)
  end

  test "should destroy bmwx6" do
    assert_difference('Bmwx6.count', -1) do
      delete bmwx6_url(@bmwx6)
    end

    assert_redirected_to bmwx6s_url
  end
end
