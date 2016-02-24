require 'test_helper'

class VDetalleCambioControllerTest < ActionController::TestCase
  setup do
    @v_detalle_cambio = v_detalle_cambio(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_detalle_cambio)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_detalle_cambio" do
    assert_difference('VDetalleCambio.count') do
      post :create, v_detalle_cambio: { CANTIDAD_CAMBIO: @v_detalle_cambio.CANTIDAD_CAMBIO, DESCUENTO_CAMBIO: @v_detalle_cambio.DESCUENTO_CAMBIO, ID_DEVOLUCION: @v_detalle_cambio.ID_DEVOLUCION, LINEA_CAMBIO: @v_detalle_cambio.LINEA_CAMBIO, NOMBRE_UNICO_INSUMO: @v_detalle_cambio.NOMBRE_UNICO_INSUMO, PRECIO_CAMBIO: @v_detalle_cambio.PRECIO_CAMBIO }
    end

    assert_redirected_to v_detalle_cambio_path(assigns(:v_detalle_cambio))
  end

  test "should show v_detalle_cambio" do
    get :show, id: @v_detalle_cambio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_detalle_cambio
    assert_response :success
  end

  test "should update v_detalle_cambio" do
    patch :update, id: @v_detalle_cambio, v_detalle_cambio: { CANTIDAD_CAMBIO: @v_detalle_cambio.CANTIDAD_CAMBIO, DESCUENTO_CAMBIO: @v_detalle_cambio.DESCUENTO_CAMBIO, ID_DEVOLUCION: @v_detalle_cambio.ID_DEVOLUCION, LINEA_CAMBIO: @v_detalle_cambio.LINEA_CAMBIO, NOMBRE_UNICO_INSUMO: @v_detalle_cambio.NOMBRE_UNICO_INSUMO, PRECIO_CAMBIO: @v_detalle_cambio.PRECIO_CAMBIO }
    assert_redirected_to v_detalle_cambio_path(assigns(:v_detalle_cambio))
  end

  test "should destroy v_detalle_cambio" do
    assert_difference('VDetalleCambio.count', -1) do
      delete :destroy, id: @v_detalle_cambio
    end

    assert_redirected_to v_detalle_cambio_index_path
  end
end
