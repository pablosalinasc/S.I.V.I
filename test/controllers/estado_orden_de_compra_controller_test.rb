require 'test_helper'

class EstadoOrdenDeCompraControllerTest < ActionController::TestCase
  setup do
    @estado_orden_de_compra = estado_orden_de_compra(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_orden_de_compra)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_orden_de_compra" do
    assert_difference('EstadoOrdenDeCompra.count') do
      post :create, estado_orden_de_compra: { DESCRIPCION_ESTADO_COMPRA: @estado_orden_de_compra.DESCRIPCION_ESTADO_COMPRA }
    end

    assert_redirected_to estado_orden_de_compra_path(assigns(:estado_orden_de_compra))
  end

  test "should show estado_orden_de_compra" do
    get :show, id: @estado_orden_de_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_orden_de_compra
    assert_response :success
  end

  test "should update estado_orden_de_compra" do
    patch :update, id: @estado_orden_de_compra, estado_orden_de_compra: { DESCRIPCION_ESTADO_COMPRA: @estado_orden_de_compra.DESCRIPCION_ESTADO_COMPRA }
    assert_redirected_to estado_orden_de_compra_path(assigns(:estado_orden_de_compra))
  end

  test "should destroy estado_orden_de_compra" do
    assert_difference('EstadoOrdenDeCompra.count', -1) do
      delete :destroy, id: @estado_orden_de_compra
    end

    assert_redirected_to estado_orden_de_compra_index_path
  end
end
