require 'test_helper'

class VDetalleCotizacionControllerTest < ActionController::TestCase
  setup do
    @v_detalle_cotizacion = v_detalle_cotizacion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_detalle_cotizacion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_detalle_cotizacion" do
    assert_difference('VDetalleCotizacion.count') do
      post :create, v_detalle_cotizacion: { CANTIDAD_COTIZACION: @v_detalle_cotizacion.CANTIDAD_COTIZACION, CODIGO_INSUMO: @v_detalle_cotizacion.CODIGO_INSUMO, ID_COTIZACION: @v_detalle_cotizacion.ID_COTIZACION, ID_INSUMO: @v_detalle_cotizacion.ID_INSUMO, ID_PROVEEDOR: @v_detalle_cotizacion.ID_PROVEEDOR, LINEA_COTIZACION: @v_detalle_cotizacion.LINEA_COTIZACION, NOMBRE_UNICO_INSUMO: @v_detalle_cotizacion.NOMBRE_UNICO_INSUMO, PRECIO_COTIZACION: @v_detalle_cotizacion.PRECIO_COTIZACION }
    end

    assert_redirected_to v_detalle_cotizacion_path(assigns(:v_detalle_cotizacion))
  end

  test "should show v_detalle_cotizacion" do
    get :show, id: @v_detalle_cotizacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_detalle_cotizacion
    assert_response :success
  end

  test "should update v_detalle_cotizacion" do
    patch :update, id: @v_detalle_cotizacion, v_detalle_cotizacion: { CANTIDAD_COTIZACION: @v_detalle_cotizacion.CANTIDAD_COTIZACION, CODIGO_INSUMO: @v_detalle_cotizacion.CODIGO_INSUMO, ID_COTIZACION: @v_detalle_cotizacion.ID_COTIZACION, ID_INSUMO: @v_detalle_cotizacion.ID_INSUMO, ID_PROVEEDOR: @v_detalle_cotizacion.ID_PROVEEDOR, LINEA_COTIZACION: @v_detalle_cotizacion.LINEA_COTIZACION, NOMBRE_UNICO_INSUMO: @v_detalle_cotizacion.NOMBRE_UNICO_INSUMO, PRECIO_COTIZACION: @v_detalle_cotizacion.PRECIO_COTIZACION }
    assert_redirected_to v_detalle_cotizacion_path(assigns(:v_detalle_cotizacion))
  end

  test "should destroy v_detalle_cotizacion" do
    assert_difference('VDetalleCotizacion.count', -1) do
      delete :destroy, id: @v_detalle_cotizacion
    end

    assert_redirected_to v_detalle_cotizacion_index_path
  end
end
