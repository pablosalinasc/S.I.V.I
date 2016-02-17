require 'test_helper'

class GuiaDeDespachoControllerTest < ActionController::TestCase
  setup do
    @guia_de_despacho = guia_de_despacho(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guia_de_despacho)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guia_de_despacho" do
    assert_difference('GuiaDeDespacho.count') do
      post :create, guia_de_despacho: { DESPACHO_LOCAL_GUIA: @guia_de_despacho.DESPACHO_LOCAL_GUIA, DESTINO_GUIA: @guia_de_despacho.DESTINO_GUIA, FECHA_RECEPCION_GUIA: @guia_de_despacho.FECHA_RECEPCION_GUIA, FECHA_SALIDA_GUIA: @guia_de_despacho.FECHA_SALIDA_GUIA, ID_COMPRA: @guia_de_despacho.ID_COMPRA, ID_PROVEEDOR: @guia_de_despacho.ID_PROVEEDOR, TIPO_MOVIMIENTO_GUIA: @guia_de_despacho.TIPO_MOVIMIENTO_GUIA, VEHICULO_GUIA: @guia_de_despacho.VEHICULO_GUIA }
    end

    assert_redirected_to guia_de_despacho_path(assigns(:guia_de_despacho))
  end

  test "should show guia_de_despacho" do
    get :show, id: @guia_de_despacho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guia_de_despacho
    assert_response :success
  end

  test "should update guia_de_despacho" do
    patch :update, id: @guia_de_despacho, guia_de_despacho: { DESPACHO_LOCAL_GUIA: @guia_de_despacho.DESPACHO_LOCAL_GUIA, DESTINO_GUIA: @guia_de_despacho.DESTINO_GUIA, FECHA_RECEPCION_GUIA: @guia_de_despacho.FECHA_RECEPCION_GUIA, FECHA_SALIDA_GUIA: @guia_de_despacho.FECHA_SALIDA_GUIA, ID_COMPRA: @guia_de_despacho.ID_COMPRA, ID_PROVEEDOR: @guia_de_despacho.ID_PROVEEDOR, TIPO_MOVIMIENTO_GUIA: @guia_de_despacho.TIPO_MOVIMIENTO_GUIA, VEHICULO_GUIA: @guia_de_despacho.VEHICULO_GUIA }
    assert_redirected_to guia_de_despacho_path(assigns(:guia_de_despacho))
  end

  test "should destroy guia_de_despacho" do
    assert_difference('GuiaDeDespacho.count', -1) do
      delete :destroy, id: @guia_de_despacho
    end

    assert_redirected_to guia_de_despacho_index_path
  end
end
