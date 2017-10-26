require 'test_helper'

class StockControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stocks = stock(:one)
  end

  test "should get index" do
    get stock_url
    assert_response :success
  end

  test "should get new" do
    get new_stocks_url
    assert_response :success
  end

  test "should create stocks" do
    assert_difference('Stocks.count') do
      post stock_url, params: { stocks: { cantidad: @stocks.cantidad, descripcion: @stocks.descripcion, producto: @stocks.producto } }
    end

    assert_redirected_to stocks_url(Stocks.last)
  end

  test "should show stocks" do
    get stocks_url(@stocks)
    assert_response :success
  end

  test "should get edit" do
    get edit_stocks_url(@stocks)
    assert_response :success
  end

  test "should update stocks" do
    patch stocks_url(@stocks), params: { stocks: { cantidad: @stocks.cantidad, descripcion: @stocks.descripcion, producto: @stocks.producto } }
    assert_redirected_to stocks_url(@stocks)
  end

  test "should destroy stocks" do
    assert_difference('Stocks.count', -1) do
      delete stocks_url(@stocks)
    end

    assert_redirected_to stock_url
  end
end
