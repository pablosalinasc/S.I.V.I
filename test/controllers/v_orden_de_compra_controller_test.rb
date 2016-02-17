require 'test_helper'

class VOrdenDeCompraControllerTest < ActionController::TestCase
  setup do
    @v_orden_de_compra = v_orden_de_compra(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_orden_de_compra)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_orden_de_compra" do
    assert_difference('VOrdenDeCompra.count') do
      post :create, v_orden_de_compra: { ESTADO_ACTUAL: @v_orden_de_compra.ESTADO_ACTUAL, FECHA_COMPRA: @v_orden_de_compra.FECHA_COMPRA, FECHA_COTIZACION: @v_orden_de_compra.FECHA_COTIZACION, ID_COMPRA: @v_orden_de_compra.ID_COMPRA, ID_COTIZACION: @v_orden_de_compra.ID_COTIZACION, ID_ESTADO_COMPRA: @v_orden_de_compra.ID_ESTADO_COMPRA, ID_PROVEEDOR: @v_orden_de_compra.ID_PROVEEDOR, MONTO_TOTAL_COMPRA: @v_orden_de_compra.MONTO_TOTAL_COMPRA, NOMBRE_PROVEEDOR: @v_orden_de_compra.NOMBRE_PROVEEDOR }
    end

    assert_redirected_to v_orden_de_compra_path(assigns(:v_orden_de_compra))
  end

  test "should show v_orden_de_compra" do
    get :show, id: @v_orden_de_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_orden_de_compra
    assert_response :success
  end

  test "should update v_orden_de_compra" do
    patch :update, id: @v_orden_de_compra, v_orden_de_compra: { ESTADO_ACTUAL: @v_orden_de_compra.ESTADO_ACTUAL, FECHA_COMPRA: @v_orden_de_compra.FECHA_COMPRA, FECHA_COTIZACION: @v_orden_de_compra.FECHA_COTIZACION, ID_COMPRA: @v_orden_de_compra.ID_COMPRA, ID_COTIZACION: @v_orden_de_compra.ID_COTIZACION, ID_ESTADO_COMPRA: @v_orden_de_compra.ID_ESTADO_COMPRA, ID_PROVEEDOR: @v_orden_de_compra.ID_PROVEEDOR, MONTO_TOTAL_COMPRA: @v_orden_de_compra.MONTO_TOTAL_COMPRA, NOMBRE_PROVEEDOR: @v_orden_de_compra.NOMBRE_PROVEEDOR }
    assert_redirected_to v_orden_de_compra_path(assigns(:v_orden_de_compra))
  end

  test "should destroy v_orden_de_compra" do
    assert_difference('VOrdenDeCompra.count', -1) do
      delete :destroy, id: @v_orden_de_compra
    end

    assert_redirected_to v_orden_de_compra_index_path
  end
end
