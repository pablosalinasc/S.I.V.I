require 'test_helper'

class VProveedorControllerTest < ActionController::TestCase
  setup do
    @v_proveedor = v_proveedor(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_proveedor)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_proveedor" do
    assert_difference('VProveedor.count') do
      post :create, v_proveedor: { CANTIDAD_COTIZACIONES: @v_proveedor.CANTIDAD_COTIZACIONES, CANTIDAD_ORDENES_DE_COMPRA: @v_proveedor.CANTIDAD_ORDENES_DE_COMPRA, CIUDAD_PROVEEDOR: @v_proveedor.CIUDAD_PROVEEDOR, CORREO_PROVEEDOR: @v_proveedor.CORREO_PROVEEDOR, DIRECCION_PROVEEDOR: @v_proveedor.DIRECCION_PROVEEDOR, ID_PROVEEDOR: @v_proveedor.ID_PROVEEDOR, NOMBRE_PROVEEDOR: @v_proveedor.NOMBRE_PROVEEDOR, PAIS_PROVEEDOR: @v_proveedor.PAIS_PROVEEDOR }
    end

    assert_redirected_to v_proveedor_path(assigns(:v_proveedor))
  end

  test "should show v_proveedor" do
    get :show, id: @v_proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_proveedor
    assert_response :success
  end

  test "should update v_proveedor" do
    patch :update, id: @v_proveedor, v_proveedor: { CANTIDAD_COTIZACIONES: @v_proveedor.CANTIDAD_COTIZACIONES, CANTIDAD_ORDENES_DE_COMPRA: @v_proveedor.CANTIDAD_ORDENES_DE_COMPRA, CIUDAD_PROVEEDOR: @v_proveedor.CIUDAD_PROVEEDOR, CORREO_PROVEEDOR: @v_proveedor.CORREO_PROVEEDOR, DIRECCION_PROVEEDOR: @v_proveedor.DIRECCION_PROVEEDOR, ID_PROVEEDOR: @v_proveedor.ID_PROVEEDOR, NOMBRE_PROVEEDOR: @v_proveedor.NOMBRE_PROVEEDOR, PAIS_PROVEEDOR: @v_proveedor.PAIS_PROVEEDOR }
    assert_redirected_to v_proveedor_path(assigns(:v_proveedor))
  end

  test "should destroy v_proveedor" do
    assert_difference('VProveedor.count', -1) do
      delete :destroy, id: @v_proveedor
    end

    assert_redirected_to v_proveedor_index_path
  end
end
