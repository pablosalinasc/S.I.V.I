require 'test_helper'

class CotizacionControllerTest < ActionController::TestCase
  setup do
    @cotizacion = cotizacion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cotizacion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cotizacion" do
    assert_difference('Cotizacion.count') do
      post :create, cotizacion: { FECHA_COTIZACION: @cotizacion.FECHA_COTIZACION, ID_PROVEEDOR: @cotizacion.ID_PROVEEDOR, MONTO_TOTAL_COTIZACION: @cotizacion.MONTO_TOTAL_COTIZACION }
    end

    assert_redirected_to cotizacion_path(assigns(:cotizacion))
  end

  test "should show cotizacion" do
    get :show, id: @cotizacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cotizacion
    assert_response :success
  end

  test "should update cotizacion" do
    patch :update, id: @cotizacion, cotizacion: { FECHA_COTIZACION: @cotizacion.FECHA_COTIZACION, ID_PROVEEDOR: @cotizacion.ID_PROVEEDOR, MONTO_TOTAL_COTIZACION: @cotizacion.MONTO_TOTAL_COTIZACION }
    assert_redirected_to cotizacion_path(assigns(:cotizacion))
  end

  test "should destroy cotizacion" do
    assert_difference('Cotizacion.count', -1) do
      delete :destroy, id: @cotizacion
    end

    assert_redirected_to cotizacion_index_path
  end
end
