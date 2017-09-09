require 'test_helper'

class PresupuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presupuesto = presupuestos(:one)
  end

  test "should get index" do
    get presupuestos_url
    assert_response :success
  end

  test "should get new" do
    get new_presupuesto_url
    assert_response :success
  end

  test "should create presupuesto" do
    assert_difference('Presupuesto.count') do
      post presupuestos_url, params: { presupuesto: { armamento: @presupuesto.armamento, cantGuardia: @presupuesto.cantGuardia, cantHora: @presupuesto.cantHora, fecha: @presupuesto.fecha, montoMensual: @presupuesto.montoMensual, turno: @presupuesto.turno } }
    end

    assert_redirected_to presupuesto_url(Presupuesto.last)
  end

  test "should show presupuesto" do
    get presupuesto_url(@presupuesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_presupuesto_url(@presupuesto)
    assert_response :success
  end

  test "should update presupuesto" do
    patch presupuesto_url(@presupuesto), params: { presupuesto: { armamento: @presupuesto.armamento, cantGuardia: @presupuesto.cantGuardia, cantHora: @presupuesto.cantHora, fecha: @presupuesto.fecha, montoMensual: @presupuesto.montoMensual, turno: @presupuesto.turno } }
    assert_redirected_to presupuesto_url(@presupuesto)
  end

  test "should destroy presupuesto" do
    assert_difference('Presupuesto.count', -1) do
      delete presupuesto_url(@presupuesto)
    end

    assert_redirected_to presupuestos_url
  end
end
