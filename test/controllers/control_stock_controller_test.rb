require 'test_helper'

class ControlStockControllerTest < ActionDispatch::IntegrationTest
  setup do
    @control_stocks = control_stock(:one)
  end

  test "should get index" do
    get control_stock_index_url
    assert_response :success
  end

  test "should get new" do
    get new_control_stocks_url
    assert_response :success
  end

  test "should create control_stocks" do
    assert_difference('ControlStock.count') do
      post control_stock_index_url, params: { control_stocks: { cant_x_puesto: @control_stocks.cant_x_puesto, fecha: @control_stocks.fecha } }
    end

    assert_redirected_to control_stocks_url(ControlStock.last)
  end

  test "should show control_stocks" do
    get control_stocks_url(@control_stocks)
    assert_response :success
  end

  test "should get edit" do
    get edit_control_stocks_url(@control_stocks)
    assert_response :success
  end

  test "should update control_stocks" do
    patch control_stocks_url(@control_stocks), params: { control_stocks: { cant_x_puesto: @control_stocks.cant_x_puesto, fecha: @control_stocks.fecha } }
    assert_redirected_to control_stocks_url(@control_stocks)
  end

  test "should destroy control_stocks" do
    assert_difference('ControlStock.count', -1) do
      delete control_stocks_url(@control_stocks)
    end

    assert_redirected_to control_stock_index_url
  end
end
