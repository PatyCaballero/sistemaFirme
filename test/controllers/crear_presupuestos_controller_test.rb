require 'test_helper'

class CrearPresupuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crear_presupuesto = crear_presupuestos(:one)
  end

  test "should get index" do
    get crear_presupuestos_url
    assert_response :success
  end

  test "should get new" do
    get new_crear_presupuesto_url
    assert_response :success
  end

  test "should create crear_presupuesto" do
    assert_difference('CrearPresupuesto.count') do
      post crear_presupuestos_url, params: { crear_presupuesto: { armamento: @crear_presupuesto.armamento, cantGuardia: @crear_presupuesto.cantGuardia, cantHora: @crear_presupuesto.cantHora, fecha: @crear_presupuesto.fecha, montoMensual: @crear_presupuesto.montoMensual, turno: @crear_presupuesto.turno } }
    end

    assert_redirected_to crear_presupuesto_url(CrearPresupuesto.last)
  end

  test "should show crear_presupuesto" do
    get crear_presupuesto_url(@crear_presupuesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_crear_presupuesto_url(@crear_presupuesto)
    assert_response :success
  end

  test "should update crear_presupuesto" do
    patch crear_presupuesto_url(@crear_presupuesto), params: { crear_presupuesto: { armamento: @crear_presupuesto.armamento, cantGuardia: @crear_presupuesto.cantGuardia, cantHora: @crear_presupuesto.cantHora, fecha: @crear_presupuesto.fecha, montoMensual: @crear_presupuesto.montoMensual, turno: @crear_presupuesto.turno } }
    assert_redirected_to crear_presupuesto_url(@crear_presupuesto)
  end

  test "should destroy crear_presupuesto" do
    assert_difference('CrearPresupuesto.count', -1) do
      delete crear_presupuesto_url(@crear_presupuesto)
    end

    assert_redirected_to crear_presupuestos_url
  end
end
