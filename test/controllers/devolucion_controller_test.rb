require 'test_helper'

class DevolucionControllerTest < ActionController::TestCase
  setup do
    @devolucion = devolucion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devolucion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devolucion" do
    assert_difference('Devolucion.count') do
      post :create, devolucion: { CANT_INSUMOS_NUEVOS_DEVOLUCION: @devolucion.CANT_INSUMOS_NUEVOS_DEVOLUCION, COMENTARIO_DEVOLUCION: @devolucion.COMENTARIO_DEVOLUCION, FECHA_DEVOLUCION: @devolucion.FECHA_DEVOLUCION, ID_ESTADO_DEVOLUCION: @devolucion.ID_ESTADO_DEVOLUCION, ID_LOCAL: @devolucion.ID_LOCAL, ID_VENDEDOR: @devolucion.ID_VENDEDOR, ID_VENTA: @devolucion.ID_VENTA, INSUMOS_DEFECTUOSOS_DEVOLUCION: @devolucion.INSUMOS_DEFECTUOSOS_DEVOLUCION, MONTO_CAMBIO: @devolucion.MONTO_CAMBIO, TIPO_DEVOLUCION: @devolucion.TIPO_DEVOLUCION }
    end

    assert_redirected_to devolucion_path(assigns(:devolucion))
  end

  test "should show devolucion" do
    get :show, id: @devolucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devolucion
    assert_response :success
  end

  test "should update devolucion" do
    patch :update, id: @devolucion, devolucion: { CANT_INSUMOS_NUEVOS_DEVOLUCION: @devolucion.CANT_INSUMOS_NUEVOS_DEVOLUCION, COMENTARIO_DEVOLUCION: @devolucion.COMENTARIO_DEVOLUCION, FECHA_DEVOLUCION: @devolucion.FECHA_DEVOLUCION, ID_ESTADO_DEVOLUCION: @devolucion.ID_ESTADO_DEVOLUCION, ID_LOCAL: @devolucion.ID_LOCAL, ID_VENDEDOR: @devolucion.ID_VENDEDOR, ID_VENTA: @devolucion.ID_VENTA, INSUMOS_DEFECTUOSOS_DEVOLUCION: @devolucion.INSUMOS_DEFECTUOSOS_DEVOLUCION, MONTO_CAMBIO: @devolucion.MONTO_CAMBIO, TIPO_DEVOLUCION: @devolucion.TIPO_DEVOLUCION }
    assert_redirected_to devolucion_path(assigns(:devolucion))
  end

  test "should destroy devolucion" do
    assert_difference('Devolucion.count', -1) do
      delete :destroy, id: @devolucion
    end

    assert_redirected_to devolucion_index_path
  end
end
