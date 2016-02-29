require 'test_helper'

class DetalleCotizacionControllerTest < ActionController::TestCase
  setup do
    @detalle_cotizacion = detalle_cotizacion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_cotizacion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_cotizacion" do
    assert_difference('DetalleCotizacion.count') do
      post :create, detalle_cotizacion: { CANTIDAD_COTIZACION: @detalle_cotizacion.CANTIDAD_COTIZACION, ID_CODIGO_PROVEEDOR: @detalle_cotizacion.ID_CODIGO_PROVEEDOR, ID_COTIZACION: @detalle_cotizacion.ID_COTIZACION, LINEA_COTIZACION: @detalle_cotizacion.LINEA_COTIZACION, PRECIO_COTIZACION: @detalle_cotizacion.PRECIO_COTIZACION }
    end

    assert_redirected_to detalle_cotizacion_path(assigns(:detalle_cotizacion))
  end

  test "should show detalle_cotizacion" do
    get :show, id: @detalle_cotizacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_cotizacion
    assert_response :success
  end

  test "should update detalle_cotizacion" do
    patch :update, id: @detalle_cotizacion, detalle_cotizacion: { CANTIDAD_COTIZACION: @detalle_cotizacion.CANTIDAD_COTIZACION, ID_CODIGO_PROVEEDOR: @detalle_cotizacion.ID_CODIGO_PROVEEDOR, ID_COTIZACION: @detalle_cotizacion.ID_COTIZACION, LINEA_COTIZACION: @detalle_cotizacion.LINEA_COTIZACION, PRECIO_COTIZACION: @detalle_cotizacion.PRECIO_COTIZACION }
    assert_redirected_to detalle_cotizacion_path(assigns(:detalle_cotizacion))
  end

  test "should destroy detalle_cotizacion" do
    assert_difference('DetalleCotizacion.count', -1) do
      delete :destroy, id: @detalle_cotizacion
    end

    assert_redirected_to detalle_cotizacion_index_path
  end
end
