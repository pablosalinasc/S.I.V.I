require 'test_helper'

class VCodigoProveedorControllerTest < ActionController::TestCase
  setup do
    @v_codigo_proveedor = v_codigo_proveedor(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_codigo_proveedor)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_codigo_proveedor" do
    assert_difference('VCodigoProveedor.count') do
      post :create, v_codigo_proveedor: { CODIGO_INSUMO: @v_codigo_proveedor.CODIGO_INSUMO, ID_CODIGO_PROVEEDOR: @v_codigo_proveedor.ID_CODIGO_PROVEEDOR, ID_INSUMO: @v_codigo_proveedor.ID_INSUMO, ID_PROVEEDOR: @v_codigo_proveedor.ID_PROVEEDOR, NOMBRE_PROVEEDOR: @v_codigo_proveedor.NOMBRE_PROVEEDOR, NOMBRE_UNICO_INSUMO: @v_codigo_proveedor.NOMBRE_UNICO_INSUMO }
    end

    assert_redirected_to v_codigo_proveedor_path(assigns(:v_codigo_proveedor))
  end

  test "should show v_codigo_proveedor" do
    get :show, id: @v_codigo_proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_codigo_proveedor
    assert_response :success
  end

  test "should update v_codigo_proveedor" do
    patch :update, id: @v_codigo_proveedor, v_codigo_proveedor: { CODIGO_INSUMO: @v_codigo_proveedor.CODIGO_INSUMO, ID_CODIGO_PROVEEDOR: @v_codigo_proveedor.ID_CODIGO_PROVEEDOR, ID_INSUMO: @v_codigo_proveedor.ID_INSUMO, ID_PROVEEDOR: @v_codigo_proveedor.ID_PROVEEDOR, NOMBRE_PROVEEDOR: @v_codigo_proveedor.NOMBRE_PROVEEDOR, NOMBRE_UNICO_INSUMO: @v_codigo_proveedor.NOMBRE_UNICO_INSUMO }
    assert_redirected_to v_codigo_proveedor_path(assigns(:v_codigo_proveedor))
  end

  test "should destroy v_codigo_proveedor" do
    assert_difference('VCodigoProveedor.count', -1) do
      delete :destroy, id: @v_codigo_proveedor
    end

    assert_redirected_to v_codigo_proveedor_index_path
  end
end
