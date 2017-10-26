require 'test_helper'

class AsignarPuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignar_puesto = asignar_puestos(:one)
  end

  test "should get index" do
    get asignar_puestos_url
    assert_response :success
  end

  test "should get new" do
    get new_asignar_puesto_url
    assert_response :success
  end

  test "should create asignar_puesto" do
    assert_difference('AsignarPuesto.count') do
      post asignar_puestos_url, params: { asignar_puesto: { asignarId: @asignar_puesto.asignarId, direccion: @asignar_puesto.direccion, horaEntrada: @asignar_puesto.horaEntrada, horaSalida: @asignar_puesto.horaSalida, puesto: @asignar_puesto.puesto, turno: @asignar_puesto.turno } }
    end

    assert_redirected_to asignar_puesto_url(AsignarPuesto.last)
  end

  test "should show asignar_puesto" do
    get asignar_puesto_url(@asignar_puesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_asignar_puesto_url(@asignar_puesto)
    assert_response :success
  end

  test "should update asignar_puesto" do
    patch asignar_puesto_url(@asignar_puesto), params: { asignar_puesto: { asignarId: @asignar_puesto.asignarId, direccion: @asignar_puesto.direccion, horaEntrada: @asignar_puesto.horaEntrada, horaSalida: @asignar_puesto.horaSalida, puesto: @asignar_puesto.puesto, turno: @asignar_puesto.turno } }
    assert_redirected_to asignar_puesto_url(@asignar_puesto)
  end

  test "should destroy asignar_puesto" do
    assert_difference('AsignarPuesto.count', -1) do
      delete asignar_puesto_url(@asignar_puesto)
    end

    assert_redirected_to asignar_puestos_url
  end
end
