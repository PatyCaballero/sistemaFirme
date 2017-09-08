require 'test_helper'

class GuardiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guardium = guardia(:one)
  end

  test "should get index" do
    get guardia_url
    assert_response :success
  end

  test "should get new" do
    get new_guardium_url
    assert_response :success
  end

  test "should create guardium" do
    assert_difference('Guardium.count') do
      post guardia_url, params: { guardium: { apellido: @guardium.apellido, direccion: @guardium.direccion, fechaInicio: @guardium.fechaInicio, fechaNacimiento: @guardium.fechaNacimiento, nombre: @guardium.nombre, numCedula: @guardium.numCedula, telefono: @guardium.telefono } }
    end

    assert_redirected_to guardium_url(Guardium.last)
  end

  test "should show guardium" do
    get guardium_url(@guardium)
    assert_response :success
  end

  test "should get edit" do
    get edit_guardium_url(@guardium)
    assert_response :success
  end

  test "should update guardium" do
    patch guardium_url(@guardium), params: { guardium: { apellido: @guardium.apellido, direccion: @guardium.direccion, fechaInicio: @guardium.fechaInicio, fechaNacimiento: @guardium.fechaNacimiento, nombre: @guardium.nombre, numCedula: @guardium.numCedula, telefono: @guardium.telefono } }
    assert_redirected_to guardium_url(@guardium)
  end

  test "should destroy guardium" do
    assert_difference('Guardium.count', -1) do
      delete guardium_url(@guardium)
    end

    assert_redirected_to guardia_url
  end
end
