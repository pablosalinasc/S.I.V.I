require 'test_helper'

class CodigoProveedorControllerTest < ActionController::TestCase
  setup do
    @codigo_proveedor = codigo_proveedor(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:codigo_proveedor)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create codigo_proveedor" do
    assert_difference('CodigoProveedor.count') do
      post :create, codigo_proveedor: { CODIGO_INSUMO: @codigo_proveedor.CODIGO_INSUMO, ID_INSUMO: @codigo_proveedor.ID_INSUMO, ID_PROVEEDOR: @codigo_proveedor.ID_PROVEEDOR }
    end

    assert_redirected_to codigo_proveedor_path(assigns(:codigo_proveedor))
  end

  test "should show codigo_proveedor" do
    get :show, id: @codigo_proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @codigo_proveedor
    assert_response :success
  end

  test "should update codigo_proveedor" do
    patch :update, id: @codigo_proveedor, codigo_proveedor: { CODIGO_INSUMO: @codigo_proveedor.CODIGO_INSUMO, ID_INSUMO: @codigo_proveedor.ID_INSUMO, ID_PROVEEDOR: @codigo_proveedor.ID_PROVEEDOR }
    assert_redirected_to codigo_proveedor_path(assigns(:codigo_proveedor))
  end

  test "should destroy codigo_proveedor" do
    assert_difference('CodigoProveedor.count', -1) do
      delete :destroy, id: @codigo_proveedor
    end

    assert_redirected_to codigo_proveedor_index_path
  end
end
