require 'test_helper'

class PuestoRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puesto_registro = puesto_registros(:one)
  end

  test "should get index" do
    get puesto_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_puesto_registro_url
    assert_response :success
  end

  test "should create puesto_registro" do
    assert_difference('PuestoRegistro.count') do
      post puesto_registros_url, params: { puesto_registro: { direccion: @puesto_registro.direccion, horaEntrada: @puesto_registro.horaEntrada, horaSalida: @puesto_registro.horaSalida, puestoNombre: @puesto_registro.puestoNombre, turno: @puesto_registro.turno } }
    end

    assert_redirected_to puesto_registro_url(PuestoRegistro.last)
  end

  test "should show puesto_registro" do
    get puesto_registro_url(@puesto_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_puesto_registro_url(@puesto_registro)
    assert_response :success
  end

  test "should update puesto_registro" do
    patch puesto_registro_url(@puesto_registro), params: { puesto_registro: { direccion: @puesto_registro.direccion, horaEntrada: @puesto_registro.horaEntrada, horaSalida: @puesto_registro.horaSalida, puestoNombre: @puesto_registro.puestoNombre, turno: @puesto_registro.turno } }
    assert_redirected_to puesto_registro_url(@puesto_registro)
  end

  test "should destroy puesto_registro" do
    assert_difference('PuestoRegistro.count', -1) do
      delete puesto_registro_url(@puesto_registro)
    end

    assert_redirected_to puesto_registros_url
  end
end
