require 'test_helper'

class VResumenClienteControllerTest < ActionController::TestCase
  setup do
    @v_resumen_cliente = v_resumen_cliente(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_resumen_cliente)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_resumen_cliente" do
    assert_difference('VResumenCliente.count') do
      post :create, v_resumen_cliente: { CORREO_CLIENTE: @v_resumen_cliente.CORREO_CLIENTE, DESCUENTO_CLIENTE: @v_resumen_cliente.DESCUENTO_CLIENTE, DEVOLUCIONES: @v_resumen_cliente.DEVOLUCIONES, EDAD: @v_resumen_cliente.EDAD, ID_CLIENTE: @v_resumen_cliente.ID_CLIENTE, NOMBRE_CLIENTE: @v_resumen_cliente.NOMBRE_CLIENTE, RUT_CLIENTE: @v_resumen_cliente.RUT_CLIENTE, TELEFONO_CLIENTE: @v_resumen_cliente.TELEFONO_CLIENTE, VENTAS: @v_resumen_cliente.VENTAS }
    end

    assert_redirected_to v_resumen_cliente_path(assigns(:v_resumen_cliente))
  end

  test "should show v_resumen_cliente" do
    get :show, id: @v_resumen_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_resumen_cliente
    assert_response :success
  end

  test "should update v_resumen_cliente" do
    patch :update, id: @v_resumen_cliente, v_resumen_cliente: { CORREO_CLIENTE: @v_resumen_cliente.CORREO_CLIENTE, DESCUENTO_CLIENTE: @v_resumen_cliente.DESCUENTO_CLIENTE, DEVOLUCIONES: @v_resumen_cliente.DEVOLUCIONES, EDAD: @v_resumen_cliente.EDAD, ID_CLIENTE: @v_resumen_cliente.ID_CLIENTE, NOMBRE_CLIENTE: @v_resumen_cliente.NOMBRE_CLIENTE, RUT_CLIENTE: @v_resumen_cliente.RUT_CLIENTE, TELEFONO_CLIENTE: @v_resumen_cliente.TELEFONO_CLIENTE, VENTAS: @v_resumen_cliente.VENTAS }
    assert_redirected_to v_resumen_cliente_path(assigns(:v_resumen_cliente))
  end

  test "should destroy v_resumen_cliente" do
    assert_difference('VResumenCliente.count', -1) do
      delete :destroy, id: @v_resumen_cliente
    end

    assert_redirected_to v_resumen_cliente_index_path
  end
end
