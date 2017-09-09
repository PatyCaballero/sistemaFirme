require 'test_helper'

class GuardiaRegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guardia_registro = guardia_registros(:one)
  end

  test "should get index" do
    get guardia_registros_url
    assert_response :success
  end

  test "should get new" do
    get new_guardia_registro_url
    assert_response :success
  end

  test "should create guardia_registro" do
    assert_difference('GuardiaRegistro.count') do
      post guardia_registros_url, params: { guardia_registro: { apellido: @guardia_registro.apellido, direccion: @guardia_registro.direccion, fechaNacimiento: @guardia_registro.fechaNacimiento, nombre: @guardia_registro.nombre, numDocumento: @guardia_registro.numDocumento, telefono: @guardia_registro.telefono } }
    end

    assert_redirected_to guardia_registro_url(GuardiaRegistro.last)
  end

  test "should show guardia_registro" do
    get guardia_registro_url(@guardia_registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_guardia_registro_url(@guardia_registro)
    assert_response :success
  end

  test "should update guardia_registro" do
    patch guardia_registro_url(@guardia_registro), params: { guardia_registro: { apellido: @guardia_registro.apellido, direccion: @guardia_registro.direccion, fechaNacimiento: @guardia_registro.fechaNacimiento, nombre: @guardia_registro.nombre, numDocumento: @guardia_registro.numDocumento, telefono: @guardia_registro.telefono } }
    assert_redirected_to guardia_registro_url(@guardia_registro)
  end

  test "should destroy guardia_registro" do
    assert_difference('GuardiaRegistro.count', -1) do
      delete guardia_registro_url(@guardia_registro)
    end

    assert_redirected_to guardia_registros_url
  end
end
