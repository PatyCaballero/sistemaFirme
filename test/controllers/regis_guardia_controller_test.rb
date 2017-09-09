require 'test_helper'

class RegisGuardiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regis_guardium = regis_guardia(:one)
  end

  test "should get index" do
    get regis_guardia_url
    assert_response :success
  end

  test "should get new" do
    get new_regis_guardium_url
    assert_response :success
  end

  test "should create regis_guardium" do
    assert_difference('RegisGuardium.count') do
      post regis_guardia_url, params: { regis_guardium: { apellido: @regis_guardium.apellido, direccion: @regis_guardium.direccion, fechaNacimiento: @regis_guardium.fechaNacimiento, nombre: @regis_guardium.nombre, numDocumento: @regis_guardium.numDocumento, telefono: @regis_guardium.telefono } }
    end

    assert_redirected_to regis_guardium_url(RegisGuardium.last)
  end

  test "should show regis_guardium" do
    get regis_guardium_url(@regis_guardium)
    assert_response :success
  end

  test "should get edit" do
    get edit_regis_guardium_url(@regis_guardium)
    assert_response :success
  end

  test "should update regis_guardium" do
    patch regis_guardium_url(@regis_guardium), params: { regis_guardium: { apellido: @regis_guardium.apellido, direccion: @regis_guardium.direccion, fechaNacimiento: @regis_guardium.fechaNacimiento, nombre: @regis_guardium.nombre, numDocumento: @regis_guardium.numDocumento, telefono: @regis_guardium.telefono } }
    assert_redirected_to regis_guardium_url(@regis_guardium)
  end

  test "should destroy regis_guardium" do
    assert_difference('RegisGuardium.count', -1) do
      delete regis_guardium_url(@regis_guardium)
    end

    assert_redirected_to regis_guardia_url
  end
end
