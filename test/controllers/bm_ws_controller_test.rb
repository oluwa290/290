require 'test_helper'

class BmWsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bmw = bmws(:one)
  end

  test "should get index" do
    get bmws_url
    assert_response :success
  end

  test "should get new" do
    get new_bmw_url
    assert_response :success
  end

  test "should create bmw" do
    assert_difference('Bmw.count') do
      post bmws_url, params: { bmw: { X6: @bmw.X6, make: @bmw.make, model: @bmw.model, year: @bmw.year } }
    end

    assert_redirected_to bmw_url(Bmw.last)
  end

  test "should show bmw" do
    get bmw_url(@bmw)
    assert_response :success
  end

  test "should get edit" do
    get edit_bmw_url(@bmw)
    assert_response :success
  end

  test "should update bmw" do
    patch bmw_url(@bmw), params: { bmw: { X6: @bmw.X6, make: @bmw.make, model: @bmw.model, year: @bmw.year } }
    assert_redirected_to bmw_url(@bmw)
  end

  test "should destroy bmw" do
    assert_difference('Bmw.count', -1) do
      delete bmw_url(@bmw)
    end

    assert_redirected_to bmws_url
  end
end
