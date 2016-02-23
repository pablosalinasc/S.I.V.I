require 'test_helper'

class VDetalleDevolucionControllerTest < ActionController::TestCase
  setup do
    @v_detalle_devolucion = v_detalle_devolucion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_detalle_devolucion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_detalle_devolucion" do
    assert_difference('VDetalleDevolucion.count') do
      post :create, v_detalle_devolucion: { CANTIDAD_PRODUCTOS: @v_detalle_devolucion.CANTIDAD_PRODUCTOS, ID_DEVOLUCION: @v_detalle_devolucion.ID_DEVOLUCION, LINEA_DEVOLUCION: @v_detalle_devolucion.LINEA_DEVOLUCION, NOMBRE_UNICO_INSUMO: @v_detalle_devolucion.NOMBRE_UNICO_INSUMO }
    end

    assert_redirected_to v_detalle_devolucion_path(assigns(:v_detalle_devolucion))
  end

  test "should show v_detalle_devolucion" do
    get :show, id: @v_detalle_devolucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_detalle_devolucion
    assert_response :success
  end

  test "should update v_detalle_devolucion" do
    patch :update, id: @v_detalle_devolucion, v_detalle_devolucion: { CANTIDAD_PRODUCTOS: @v_detalle_devolucion.CANTIDAD_PRODUCTOS, ID_DEVOLUCION: @v_detalle_devolucion.ID_DEVOLUCION, LINEA_DEVOLUCION: @v_detalle_devolucion.LINEA_DEVOLUCION, NOMBRE_UNICO_INSUMO: @v_detalle_devolucion.NOMBRE_UNICO_INSUMO }
    assert_redirected_to v_detalle_devolucion_path(assigns(:v_detalle_devolucion))
  end

  test "should destroy v_detalle_devolucion" do
    assert_difference('VDetalleDevolucion.count', -1) do
      delete :destroy, id: @v_detalle_devolucion
    end

    assert_redirected_to v_detalle_devolucion_index_path
  end
end
