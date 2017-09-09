require 'test_helper'

class ListaCalendariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lista_calendario = lista_calendarios(:one)
  end

  test "should get index" do
    get lista_calendarios_url
    assert_response :success
  end

  test "should get new" do
    get new_lista_calendario_url
    assert_response :success
  end

  test "should create lista_calendario" do
    assert_difference('ListaCalendario.count') do
      post lista_calendarios_url, params: { lista_calendario: { sueldo: @lista_calendario.sueldo } }
    end

    assert_redirected_to lista_calendario_url(ListaCalendario.last)
  end

  test "should show lista_calendario" do
    get lista_calendario_url(@lista_calendario)
    assert_response :success
  end

  test "should get edit" do
    get edit_lista_calendario_url(@lista_calendario)
    assert_response :success
  end

  test "should update lista_calendario" do
    patch lista_calendario_url(@lista_calendario), params: { lista_calendario: { sueldo: @lista_calendario.sueldo } }
    assert_redirected_to lista_calendario_url(@lista_calendario)
  end

  test "should destroy lista_calendario" do
    assert_difference('ListaCalendario.count', -1) do
      delete lista_calendario_url(@lista_calendario)
    end

    assert_redirected_to lista_calendarios_url
  end
end
