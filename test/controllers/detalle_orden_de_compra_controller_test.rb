require 'test_helper'

class DetalleOrdenDeCompraControllerTest < ActionController::TestCase
  setup do
    @detalle_orden_de_compra = detalle_orden_de_compra(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_orden_de_compra)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_orden_de_compra" do
    assert_difference('DetalleOrdenDeCompra.count') do
      post :create, detalle_orden_de_compra: { CANTIDAD_COMPRA: @detalle_orden_de_compra.CANTIDAD_COMPRA, CODIGO_INSUMO: @detalle_orden_de_compra.CODIGO_INSUMO, ID_COMPRA: @detalle_orden_de_compra.ID_COMPRA, ID_INSUMO: @detalle_orden_de_compra.ID_INSUMO, ID_PROVEEDOR: @detalle_orden_de_compra.ID_PROVEEDOR, LINEA_COMPRA: @detalle_orden_de_compra.LINEA_COMPRA, PRECIO_COMPRA: @detalle_orden_de_compra.PRECIO_COMPRA }
    end

    assert_redirected_to detalle_orden_de_compra_path(assigns(:detalle_orden_de_compra))
  end

  test "should show detalle_orden_de_compra" do
    get :show, id: @detalle_orden_de_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_orden_de_compra
    assert_response :success
  end

  test "should update detalle_orden_de_compra" do
    patch :update, id: @detalle_orden_de_compra, detalle_orden_de_compra: { CANTIDAD_COMPRA: @detalle_orden_de_compra.CANTIDAD_COMPRA, CODIGO_INSUMO: @detalle_orden_de_compra.CODIGO_INSUMO, ID_COMPRA: @detalle_orden_de_compra.ID_COMPRA, ID_INSUMO: @detalle_orden_de_compra.ID_INSUMO, ID_PROVEEDOR: @detalle_orden_de_compra.ID_PROVEEDOR, LINEA_COMPRA: @detalle_orden_de_compra.LINEA_COMPRA, PRECIO_COMPRA: @detalle_orden_de_compra.PRECIO_COMPRA }
    assert_redirected_to detalle_orden_de_compra_path(assigns(:detalle_orden_de_compra))
  end

  test "should destroy detalle_orden_de_compra" do
    assert_difference('DetalleOrdenDeCompra.count', -1) do
      delete :destroy, id: @detalle_orden_de_compra
    end

    assert_redirected_to detalle_orden_de_compra_index_path
  end
end
