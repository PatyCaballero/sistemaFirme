require 'test_helper'

class CreaPresupuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crea_presupuesto = crea_presupuestos(:one)
  end

  test "should get index" do
    get crea_presupuestos_url
    assert_response :success
  end

  test "should get new" do
    get new_crea_presupuesto_url
    assert_response :success
  end

  test "should create crea_presupuesto" do
    assert_difference('CreaPresupuesto.count') do
      post crea_presupuestos_url, params: { crea_presupuesto: { armamento: @crea_presupuesto.armamento, cantGuardia: @crea_presupuesto.cantGuardia, cantHora: @crea_presupuesto.cantHora, fecha: @crea_presupuesto.fecha, montoMensual: @crea_presupuesto.montoMensual, turno: @crea_presupuesto.turno } }
    end

    assert_redirected_to crea_presupuesto_url(CreaPresupuesto.last)
  end

  test "should show crea_presupuesto" do
    get crea_presupuesto_url(@crea_presupuesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_crea_presupuesto_url(@crea_presupuesto)
    assert_response :success
  end

  test "should update crea_presupuesto" do
    patch crea_presupuesto_url(@crea_presupuesto), params: { crea_presupuesto: { armamento: @crea_presupuesto.armamento, cantGuardia: @crea_presupuesto.cantGuardia, cantHora: @crea_presupuesto.cantHora, fecha: @crea_presupuesto.fecha, montoMensual: @crea_presupuesto.montoMensual, turno: @crea_presupuesto.turno } }
    assert_redirected_to crea_presupuesto_url(@crea_presupuesto)
  end

  test "should destroy crea_presupuesto" do
    assert_difference('CreaPresupuesto.count', -1) do
      delete crea_presupuesto_url(@crea_presupuesto)
    end

    assert_redirected_to crea_presupuestos_url
  end
end
