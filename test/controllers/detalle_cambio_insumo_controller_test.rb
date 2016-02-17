require 'test_helper'

class DetalleCambioInsumoControllerTest < ActionController::TestCase
  setup do
    @detalle_cambio_insumo = detalle_cambio_insumo(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_cambio_insumo)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_cambio_insumo" do
    assert_difference('DetalleCambioInsumo.count') do
      post :create, detalle_cambio_insumo: { CANTIDAD_CAMBIO: @detalle_cambio_insumo.CANTIDAD_CAMBIO, DESCUENTO_CAMBIO: @detalle_cambio_insumo.DESCUENTO_CAMBIO, ID_DEVOLUCION: @detalle_cambio_insumo.ID_DEVOLUCION, ID_INSUMO: @detalle_cambio_insumo.ID_INSUMO, LINEA_CAMBIO: @detalle_cambio_insumo.LINEA_CAMBIO, PRECIO_CAMBIO: @detalle_cambio_insumo.PRECIO_CAMBIO }
    end

    assert_redirected_to detalle_cambio_insumo_path(assigns(:detalle_cambio_insumo))
  end

  test "should show detalle_cambio_insumo" do
    get :show, id: @detalle_cambio_insumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_cambio_insumo
    assert_response :success
  end

  test "should update detalle_cambio_insumo" do
    patch :update, id: @detalle_cambio_insumo, detalle_cambio_insumo: { CANTIDAD_CAMBIO: @detalle_cambio_insumo.CANTIDAD_CAMBIO, DESCUENTO_CAMBIO: @detalle_cambio_insumo.DESCUENTO_CAMBIO, ID_DEVOLUCION: @detalle_cambio_insumo.ID_DEVOLUCION, ID_INSUMO: @detalle_cambio_insumo.ID_INSUMO, LINEA_CAMBIO: @detalle_cambio_insumo.LINEA_CAMBIO, PRECIO_CAMBIO: @detalle_cambio_insumo.PRECIO_CAMBIO }
    assert_redirected_to detalle_cambio_insumo_path(assigns(:detalle_cambio_insumo))
  end

  test "should destroy detalle_cambio_insumo" do
    assert_difference('DetalleCambioInsumo.count', -1) do
      delete :destroy, id: @detalle_cambio_insumo
    end

    assert_redirected_to detalle_cambio_insumo_index_path
  end
end
