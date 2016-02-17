require 'test_helper'

class TransicionEstadoCompraControllerTest < ActionController::TestCase
  setup do
    @transicion_estado_compra = transicion_estado_compra(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transicion_estado_compra)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transicion_estado_compra" do
    assert_difference('TransicionEstadoCompra.count') do
      post :create, transicion_estado_compra: { ID_ESTADO_COMPRA_DESDE: @transicion_estado_compra.ID_ESTADO_COMPRA_DESDE, ID_ESTADO_COMPRA_HASTA: @transicion_estado_compra.ID_ESTADO_COMPRA_HASTA }
    end

    assert_redirected_to transicion_estado_compra_path(assigns(:transicion_estado_compra))
  end

  test "should show transicion_estado_compra" do
    get :show, id: @transicion_estado_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transicion_estado_compra
    assert_response :success
  end

  test "should update transicion_estado_compra" do
    patch :update, id: @transicion_estado_compra, transicion_estado_compra: { ID_ESTADO_COMPRA_DESDE: @transicion_estado_compra.ID_ESTADO_COMPRA_DESDE, ID_ESTADO_COMPRA_HASTA: @transicion_estado_compra.ID_ESTADO_COMPRA_HASTA }
    assert_redirected_to transicion_estado_compra_path(assigns(:transicion_estado_compra))
  end

  test "should destroy transicion_estado_compra" do
    assert_difference('TransicionEstadoCompra.count', -1) do
      delete :destroy, id: @transicion_estado_compra
    end

    assert_redirected_to transicion_estado_compra_index_path
  end
end
