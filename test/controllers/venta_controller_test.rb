require 'test_helper'

class VentaControllerTest < ActionController::TestCase
  setup do
    @venta = venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venta" do
    assert_difference('Venta.count') do
      post :create, venta: { DESCUENTO_TOTAL_VENTA: @venta.DESCUENTO_TOTAL_VENTA, DESPACHADA_VENTA: @venta.DESPACHADA_VENTA, FECHA_VENTA: @venta.FECHA_VENTA, FORMA_DE_PAGO_VENTA: @venta.FORMA_DE_PAGO_VENTA, ID_BODEGUERO_DESPACHO: @venta.ID_BODEGUERO_DESPACHO, ID_CLIENTE: @venta.ID_CLIENTE, ID_LOCAL: @venta.ID_LOCAL, ID_VENDEDOR: @venta.ID_VENDEDOR, MONTO_TOTAL_VENTA: @venta.MONTO_TOTAL_VENTA, NUMERO_BOLETA_VENTA: @venta.NUMERO_BOLETA_VENTA }
    end

    assert_redirected_to venta_path(assigns(:venta))
  end

  test "should show venta" do
    get :show, id: @venta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venta
    assert_response :success
  end

  test "should update venta" do
    patch :update, id: @venta, venta: { DESCUENTO_TOTAL_VENTA: @venta.DESCUENTO_TOTAL_VENTA, DESPACHADA_VENTA: @venta.DESPACHADA_VENTA, FECHA_VENTA: @venta.FECHA_VENTA, FORMA_DE_PAGO_VENTA: @venta.FORMA_DE_PAGO_VENTA, ID_BODEGUERO_DESPACHO: @venta.ID_BODEGUERO_DESPACHO, ID_CLIENTE: @venta.ID_CLIENTE, ID_LOCAL: @venta.ID_LOCAL, ID_VENDEDOR: @venta.ID_VENDEDOR, MONTO_TOTAL_VENTA: @venta.MONTO_TOTAL_VENTA, NUMERO_BOLETA_VENTA: @venta.NUMERO_BOLETA_VENTA }
    assert_redirected_to venta_path(assigns(:venta))
  end

  test "should destroy venta" do
    assert_difference('Venta.count', -1) do
      delete :destroy, id: @venta
    end

    assert_redirected_to venta_index_path
  end
end
