require 'test_helper'

class RegistroClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_cliente = registro_clientes(:one)
  end

  test "should get index" do
    get registro_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_cliente_url
    assert_response :success
  end

  test "should create registro_cliente" do
    assert_difference('RegistroCliente.count') do
      post registro_clientes_url, params: { registro_cliente: { direccion: @registro_cliente.direccion, estado: @registro_cliente.estado, id: @registro_cliente.id, nombre: @registro_cliente.nombre, numRuc: @registro_cliente.numRuc, telefono: @registro_cliente.telefono } }
    end

    assert_redirected_to registro_cliente_url(RegistroCliente.last)
  end

  test "should show registro_cliente" do
    get registro_cliente_url(@registro_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_cliente_url(@registro_cliente)
    assert_response :success
  end

  test "should update registro_cliente" do
    patch registro_cliente_url(@registro_cliente), params: { registro_cliente: { direccion: @registro_cliente.direccion, estado: @registro_cliente.estado, id: @registro_cliente.id, nombre: @registro_cliente.nombre, numRuc: @registro_cliente.numRuc, telefono: @registro_cliente.telefono } }
    assert_redirected_to registro_cliente_url(@registro_cliente)
  end

  test "should destroy registro_cliente" do
    assert_difference('RegistroCliente.count', -1) do
      delete registro_cliente_url(@registro_cliente)
    end

    assert_redirected_to registro_clientes_url
  end
end
