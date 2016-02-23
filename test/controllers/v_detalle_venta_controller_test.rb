require 'test_helper'

class VDetalleVentaControllerTest < ActionController::TestCase
  setup do
    @v_detalle_venta = v_detalle_venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_detalle_venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_detalle_venta" do
    assert_difference('VDetalleVenta.count') do
      post :create, v_detalle_venta: { CANTIDAD_VENTA: @v_detalle_venta.CANTIDAD_VENTA, DESCUENTO_VENTA: @v_detalle_venta.DESCUENTO_VENTA, ID_VENTA: @v_detalle_venta.ID_VENTA, LINEA_VENTA: @v_detalle_venta.LINEA_VENTA, NOMBRE_UNICO_INSUMO: @v_detalle_venta.NOMBRE_UNICO_INSUMO, PRECIO_VENTA: @v_detalle_venta.PRECIO_VENTA }
    end

    assert_redirected_to v_detalle_venta_path(assigns(:v_detalle_venta))
  end

  test "should show v_detalle_venta" do
    get :show, id: @v_detalle_venta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_detalle_venta
    assert_response :success
  end

  test "should update v_detalle_venta" do
    patch :update, id: @v_detalle_venta, v_detalle_venta: { CANTIDAD_VENTA: @v_detalle_venta.CANTIDAD_VENTA, DESCUENTO_VENTA: @v_detalle_venta.DESCUENTO_VENTA, ID_VENTA: @v_detalle_venta.ID_VENTA, LINEA_VENTA: @v_detalle_venta.LINEA_VENTA, NOMBRE_UNICO_INSUMO: @v_detalle_venta.NOMBRE_UNICO_INSUMO, PRECIO_VENTA: @v_detalle_venta.PRECIO_VENTA }
    assert_redirected_to v_detalle_venta_path(assigns(:v_detalle_venta))
  end

  test "should destroy v_detalle_venta" do
    assert_difference('VDetalleVenta.count', -1) do
      delete :destroy, id: @v_detalle_venta
    end

    assert_redirected_to v_detalle_venta_index_path
  end
end
