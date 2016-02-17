require 'test_helper'

class EstadoDevolucionControllerTest < ActionController::TestCase
  setup do
    @estado_devolucion = estado_devolucion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_devolucion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_devolucion" do
    assert_difference('EstadoDevolucion.count') do
      post :create, estado_devolucion: { DESCRIPCION_ESTADO_DEVOLUCION: @estado_devolucion.DESCRIPCION_ESTADO_DEVOLUCION }
    end

    assert_redirected_to estado_devolucion_path(assigns(:estado_devolucion))
  end

  test "should show estado_devolucion" do
    get :show, id: @estado_devolucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_devolucion
    assert_response :success
  end

  test "should update estado_devolucion" do
    patch :update, id: @estado_devolucion, estado_devolucion: { DESCRIPCION_ESTADO_DEVOLUCION: @estado_devolucion.DESCRIPCION_ESTADO_DEVOLUCION }
    assert_redirected_to estado_devolucion_path(assigns(:estado_devolucion))
  end

  test "should destroy estado_devolucion" do
    assert_difference('EstadoDevolucion.count', -1) do
      delete :destroy, id: @estado_devolucion
    end

    assert_redirected_to estado_devolucion_index_path
  end
end
