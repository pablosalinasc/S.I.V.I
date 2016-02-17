require 'test_helper'

class VDevolucionControllerTest < ActionController::TestCase
  setup do
    @v_devolucion = v_devolucion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_devolucion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_devolucion" do
    assert_difference('VDevolucion.count') do
      post :create, v_devolucion: { CANT_INSUMOS_NUEVOS_DEVOLUCION: @v_devolucion.CANT_INSUMOS_NUEVOS_DEVOLUCION, COMENTARIO_DEVOLUCION: @v_devolucion.COMENTARIO_DEVOLUCION, DIRECCION_LOCAL: @v_devolucion.DIRECCION_LOCAL, ESTADO_ACTUAL: @v_devolucion.ESTADO_ACTUAL, FECHA_DEVOLUCION: @v_devolucion.FECHA_DEVOLUCION, ID_DEVOLUCION: @v_devolucion.ID_DEVOLUCION, ID_ESTADO_DEVOLUCION: @v_devolucion.ID_ESTADO_DEVOLUCION, ID_LOCAL: @v_devolucion.ID_LOCAL, ID_VENDEDOR: @v_devolucion.ID_VENDEDOR, ID_VENTA: @v_devolucion.ID_VENTA, INSUMOS_DEFECTUOSOS_DEVOLUCION: @v_devolucion.INSUMOS_DEFECTUOSOS_DEVOLUCION, MONTO_CAMBIO: @v_devolucion.MONTO_CAMBIO, NOMBRE_CLIENTE: @v_devolucion.NOMBRE_CLIENTE, NOMBRE_VENDEDOR: @v_devolucion.NOMBRE_VENDEDOR, TIPO_DEVOLUCION: @v_devolucion.TIPO_DEVOLUCION }
    end

    assert_redirected_to v_devolucion_path(assigns(:v_devolucion))
  end

  test "should show v_devolucion" do
    get :show, id: @v_devolucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_devolucion
    assert_response :success
  end

  test "should update v_devolucion" do
    patch :update, id: @v_devolucion, v_devolucion: { CANT_INSUMOS_NUEVOS_DEVOLUCION: @v_devolucion.CANT_INSUMOS_NUEVOS_DEVOLUCION, COMENTARIO_DEVOLUCION: @v_devolucion.COMENTARIO_DEVOLUCION, DIRECCION_LOCAL: @v_devolucion.DIRECCION_LOCAL, ESTADO_ACTUAL: @v_devolucion.ESTADO_ACTUAL, FECHA_DEVOLUCION: @v_devolucion.FECHA_DEVOLUCION, ID_DEVOLUCION: @v_devolucion.ID_DEVOLUCION, ID_ESTADO_DEVOLUCION: @v_devolucion.ID_ESTADO_DEVOLUCION, ID_LOCAL: @v_devolucion.ID_LOCAL, ID_VENDEDOR: @v_devolucion.ID_VENDEDOR, ID_VENTA: @v_devolucion.ID_VENTA, INSUMOS_DEFECTUOSOS_DEVOLUCION: @v_devolucion.INSUMOS_DEFECTUOSOS_DEVOLUCION, MONTO_CAMBIO: @v_devolucion.MONTO_CAMBIO, NOMBRE_CLIENTE: @v_devolucion.NOMBRE_CLIENTE, NOMBRE_VENDEDOR: @v_devolucion.NOMBRE_VENDEDOR, TIPO_DEVOLUCION: @v_devolucion.TIPO_DEVOLUCION }
    assert_redirected_to v_devolucion_path(assigns(:v_devolucion))
  end

  test "should destroy v_devolucion" do
    assert_difference('VDevolucion.count', -1) do
      delete :destroy, id: @v_devolucion
    end

    assert_redirected_to v_devolucion_index_path
  end
end
