require 'test_helper'

class OrdenDeCompraControllerTest < ActionController::TestCase
  setup do
    @orden_de_compra = orden_de_compra(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orden_de_compra)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_de_compra" do
    assert_difference('OrdenDeCompra.count') do
      post :create, orden_de_compra: { FECHA_COMPRA: @orden_de_compra.FECHA_COMPRA, ID_COTIZACION: @orden_de_compra.ID_COTIZACION, ID_ESTADO_COMPRA: @orden_de_compra.ID_ESTADO_COMPRA, ID_PROVEEDOR: @orden_de_compra.ID_PROVEEDOR, MONTO_TOTAL_COMPRA: @orden_de_compra.MONTO_TOTAL_COMPRA }
    end

    assert_redirected_to orden_de_compra_path(assigns(:orden_de_compra))
  end

  test "should show orden_de_compra" do
    get :show, id: @orden_de_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orden_de_compra
    assert_response :success
  end

  test "should update orden_de_compra" do
    patch :update, id: @orden_de_compra, orden_de_compra: { FECHA_COMPRA: @orden_de_compra.FECHA_COMPRA, ID_COTIZACION: @orden_de_compra.ID_COTIZACION, ID_ESTADO_COMPRA: @orden_de_compra.ID_ESTADO_COMPRA, ID_PROVEEDOR: @orden_de_compra.ID_PROVEEDOR, MONTO_TOTAL_COMPRA: @orden_de_compra.MONTO_TOTAL_COMPRA }
    assert_redirected_to orden_de_compra_path(assigns(:orden_de_compra))
  end

  test "should destroy orden_de_compra" do
    assert_difference('OrdenDeCompra.count', -1) do
      delete :destroy, id: @orden_de_compra
    end

    assert_redirected_to orden_de_compra_index_path
  end
end
