require 'test_helper'

class PresupuestoCreatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presupuesto_create = presupuesto_creates(:one)
  end

  test "should get index" do
    get presupuesto_creates_url
    assert_response :success
  end

  test "should get new" do
    get new_presupuesto_create_url
    assert_response :success
  end

  test "should create presupuesto_create" do
    assert_difference('PresupuestoCreate.count') do
      post presupuesto_creates_url, params: { presupuesto_create: { armamento: @presupuesto_create.armamento, cantGuardia: @presupuesto_create.cantGuardia, cantHora: @presupuesto_create.cantHora, fecha: @presupuesto_create.fecha, montoMensual: @presupuesto_create.montoMensual, turno: @presupuesto_create.turno } }
    end

    assert_redirected_to presupuesto_create_url(PresupuestoCreate.last)
  end

  test "should show presupuesto_create" do
    get presupuesto_create_url(@presupuesto_create)
    assert_response :success
  end

  test "should get edit" do
    get edit_presupuesto_create_url(@presupuesto_create)
    assert_response :success
  end

  test "should update presupuesto_create" do
    patch presupuesto_create_url(@presupuesto_create), params: { presupuesto_create: { armamento: @presupuesto_create.armamento, cantGuardia: @presupuesto_create.cantGuardia, cantHora: @presupuesto_create.cantHora, fecha: @presupuesto_create.fecha, montoMensual: @presupuesto_create.montoMensual, turno: @presupuesto_create.turno } }
    assert_redirected_to presupuesto_create_url(@presupuesto_create)
  end

  test "should destroy presupuesto_create" do
    assert_difference('PresupuestoCreate.count', -1) do
      delete presupuesto_create_url(@presupuesto_create)
    end

    assert_redirected_to presupuesto_creates_url
  end
end
