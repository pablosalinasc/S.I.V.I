require 'test_helper'

class DetalleVentaControllerTest < ActionController::TestCase
  setup do
    @detalle_venta = detalle_venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_venta" do
    assert_difference('DetalleVenta.count') do
      post :create, detalle_venta: { CANTIDAD_VENTA: @detalle_venta.CANTIDAD_VENTA, DESCUENTO_VENTA: @detalle_venta.DESCUENTO_VENTA, ID_INSUMO: @detalle_venta.ID_INSUMO, ID_VENTA: @detalle_venta.ID_VENTA, LINEA_VENTA: @detalle_venta.LINEA_VENTA, PRECIO_VENTA: @detalle_venta.PRECIO_VENTA }
    end

    assert_redirected_to detalle_venta_path(assigns(:detalle_venta))
  end

  test "should show detalle_venta" do
    get :show, id: @detalle_venta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_venta
    assert_response :success
  end

  test "should update detalle_venta" do
    patch :update, id: @detalle_venta, detalle_venta: { CANTIDAD_VENTA: @detalle_venta.CANTIDAD_VENTA, DESCUENTO_VENTA: @detalle_venta.DESCUENTO_VENTA, ID_INSUMO: @detalle_venta.ID_INSUMO, ID_VENTA: @detalle_venta.ID_VENTA, LINEA_VENTA: @detalle_venta.LINEA_VENTA, PRECIO_VENTA: @detalle_venta.PRECIO_VENTA }
    assert_redirected_to detalle_venta_path(assigns(:detalle_venta))
  end

  test "should destroy detalle_venta" do
    assert_difference('DetalleVenta.count', -1) do
      delete :destroy, id: @detalle_venta
    end

    assert_redirected_to detalle_venta_index_path
  end
end
