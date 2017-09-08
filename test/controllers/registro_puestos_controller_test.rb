require 'test_helper'

class RegistroPuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_puesto = registro_puestos(:one)
  end

  test "should get index" do
    get registro_puestos_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_puesto_url
    assert_response :success
  end

  test "should create registro_puesto" do
    assert_difference('RegistroPuesto.count') do
      post registro_puestos_url, params: { registro_puesto: { desde: @registro_puesto.desde, direccion: @registro_puesto.direccion, guardia: @registro_puesto.guardia, hasta: @registro_puesto.hasta, horaEntrada: @registro_puesto.horaEntrada, horaSalida: @registro_puesto.horaSalida, nombrePuesto: @registro_puesto.nombrePuesto, turno: @registro_puesto.turno } }
    end

    assert_redirected_to registro_puesto_url(RegistroPuesto.last)
  end

  test "should show registro_puesto" do
    get registro_puesto_url(@registro_puesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_puesto_url(@registro_puesto)
    assert_response :success
  end

  test "should update registro_puesto" do
    patch registro_puesto_url(@registro_puesto), params: { registro_puesto: { desde: @registro_puesto.desde, direccion: @registro_puesto.direccion, guardia: @registro_puesto.guardia, hasta: @registro_puesto.hasta, horaEntrada: @registro_puesto.horaEntrada, horaSalida: @registro_puesto.horaSalida, nombrePuesto: @registro_puesto.nombrePuesto, turno: @registro_puesto.turno } }
    assert_redirected_to registro_puesto_url(@registro_puesto)
  end

  test "should destroy registro_puesto" do
    assert_difference('RegistroPuesto.count', -1) do
      delete registro_puesto_url(@registro_puesto)
    end

    assert_redirected_to registro_puestos_url
  end
end
