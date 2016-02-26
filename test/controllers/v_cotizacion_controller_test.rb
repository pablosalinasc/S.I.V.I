require 'test_helper'

class VCotizacionControllerTest < ActionController::TestCase
  setup do
    @v_cotizacion = v_cotizacion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_cotizacion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_cotizacion" do
    assert_difference('VCotizacion.count') do
      post :create, v_cotizacion: { FECHA_COTIZACION: @v_cotizacion.FECHA_COTIZACION, ID_COTIZACION: @v_cotizacion.ID_COTIZACION, ID_PROVEEDOR: @v_cotizacion.ID_PROVEEDOR, MONTO_TOTAL_COTIZACION: @v_cotizacion.MONTO_TOTAL_COTIZACION, NOMBRE_PROVEEDOR: @v_cotizacion.NOMBRE_PROVEEDOR }
    end

    assert_redirected_to v_cotizacion_path(assigns(:v_cotizacion))
  end

  test "should show v_cotizacion" do
    get :show, id: @v_cotizacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_cotizacion
    assert_response :success
  end

  test "should update v_cotizacion" do
    patch :update, id: @v_cotizacion, v_cotizacion: { FECHA_COTIZACION: @v_cotizacion.FECHA_COTIZACION, ID_COTIZACION: @v_cotizacion.ID_COTIZACION, ID_PROVEEDOR: @v_cotizacion.ID_PROVEEDOR, MONTO_TOTAL_COTIZACION: @v_cotizacion.MONTO_TOTAL_COTIZACION, NOMBRE_PROVEEDOR: @v_cotizacion.NOMBRE_PROVEEDOR }
    assert_redirected_to v_cotizacion_path(assigns(:v_cotizacion))
  end

  test "should destroy v_cotizacion" do
    assert_difference('VCotizacion.count', -1) do
      delete :destroy, id: @v_cotizacion
    end

    assert_redirected_to v_cotizacion_index_path
  end
end
