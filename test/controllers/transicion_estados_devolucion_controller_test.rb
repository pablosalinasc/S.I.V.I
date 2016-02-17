require 'test_helper'

class TransicionEstadosDevolucionControllerTest < ActionController::TestCase
  setup do
    @transicion_estados_devolucion = transicion_estados_devolucion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transicion_estados_devolucion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transicion_estados_devolucion" do
    assert_difference('TransicionEstadosDevolucion.count') do
      post :create, transicion_estados_devolucion: { ID_ESTADO_DEVOLUCION_DESDE: @transicion_estados_devolucion.ID_ESTADO_DEVOLUCION_DESDE, ID_ESTADO_DEVOLUCION_HASTA: @transicion_estados_devolucion.ID_ESTADO_DEVOLUCION_HASTA }
    end

    assert_redirected_to transicion_estados_devolucion_path(assigns(:transicion_estados_devolucion))
  end

  test "should show transicion_estados_devolucion" do
    get :show, id: @transicion_estados_devolucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transicion_estados_devolucion
    assert_response :success
  end

  test "should update transicion_estados_devolucion" do
    patch :update, id: @transicion_estados_devolucion, transicion_estados_devolucion: { ID_ESTADO_DEVOLUCION_DESDE: @transicion_estados_devolucion.ID_ESTADO_DEVOLUCION_DESDE, ID_ESTADO_DEVOLUCION_HASTA: @transicion_estados_devolucion.ID_ESTADO_DEVOLUCION_HASTA }
    assert_redirected_to transicion_estados_devolucion_path(assigns(:transicion_estados_devolucion))
  end

  test "should destroy transicion_estados_devolucion" do
    assert_difference('TransicionEstadosDevolucion.count', -1) do
      delete :destroy, id: @transicion_estados_devolucion
    end

    assert_redirected_to transicion_estados_devolucion_index_path
  end
end
