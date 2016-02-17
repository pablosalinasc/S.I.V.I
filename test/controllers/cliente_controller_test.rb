require 'test_helper'

class ClienteControllerTest < ActionController::TestCase
  setup do
    @cliente = cliente(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { CORREO_CLIENTE: @cliente.CORREO_CLIENTE, DESCUENTO_CLIENTE: @cliente.DESCUENTO_CLIENTE, FECHA_NACIMIENTO_CLIENTE: @cliente.FECHA_NACIMIENTO_CLIENTE, NOMBRE_CLIENTE: @cliente.NOMBRE_CLIENTE, RUT_CLIENTE: @cliente.RUT_CLIENTE, TELEFONO_CLIENTE: @cliente.TELEFONO_CLIENTE }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { CORREO_CLIENTE: @cliente.CORREO_CLIENTE, DESCUENTO_CLIENTE: @cliente.DESCUENTO_CLIENTE, FECHA_NACIMIENTO_CLIENTE: @cliente.FECHA_NACIMIENTO_CLIENTE, NOMBRE_CLIENTE: @cliente.NOMBRE_CLIENTE, RUT_CLIENTE: @cliente.RUT_CLIENTE, TELEFONO_CLIENTE: @cliente.TELEFONO_CLIENTE }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to cliente_index_path
  end
end
