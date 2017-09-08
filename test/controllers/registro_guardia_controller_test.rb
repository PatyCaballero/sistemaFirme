require 'test_helper'

class RegistroGuardiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_guardium = registro_guardia(:one)
  end

  test "should get index" do
    get registro_guardia_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_guardium_url
    assert_response :success
  end

  test "should create registro_guardium" do
    assert_difference('RegistroGuardium.count') do
      post registro_guardia_url, params: { registro_guardium: { apellido: @registro_guardium.apellido, direccion: @registro_guardium.direccion, fechaInicio: @registro_guardium.fechaInicio, fechaNacimiento: @registro_guardium.fechaNacimiento, nombre: @registro_guardium.nombre, numCedula: @registro_guardium.numCedula, telefono: @registro_guardium.telefono } }
    end

    assert_redirected_to registro_guardium_url(RegistroGuardium.last)
  end

  test "should show registro_guardium" do
    get registro_guardium_url(@registro_guardium)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_guardium_url(@registro_guardium)
    assert_response :success
  end

  test "should update registro_guardium" do
    patch registro_guardium_url(@registro_guardium), params: { registro_guardium: { apellido: @registro_guardium.apellido, direccion: @registro_guardium.direccion, fechaInicio: @registro_guardium.fechaInicio, fechaNacimiento: @registro_guardium.fechaNacimiento, nombre: @registro_guardium.nombre, numCedula: @registro_guardium.numCedula, telefono: @registro_guardium.telefono } }
    assert_redirected_to registro_guardium_url(@registro_guardium)
  end

  test "should destroy registro_guardium" do
    assert_difference('RegistroGuardium.count', -1) do
      delete registro_guardium_url(@registro_guardium)
    end

    assert_redirected_to registro_guardia_url
  end
end
