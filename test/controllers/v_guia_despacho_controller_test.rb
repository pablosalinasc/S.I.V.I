require 'test_helper'

class VGuiaDespachoControllerTest < ActionController::TestCase
  setup do
    @v_guia_despacho = v_guia_despacho(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_guia_despacho)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_guia_despacho" do
    assert_difference('VGuiaDespacho.count') do
      post :create, v_guia_despacho: { DESPACHO_LOCAL_GUIA: @v_guia_despacho.DESPACHO_LOCAL_GUIA, DESTINO_GUIA: @v_guia_despacho.DESTINO_GUIA, FECHA_RECEPCION_GUIA: @v_guia_despacho.FECHA_RECEPCION_GUIA, FECHA_SALIDA_GUIA: @v_guia_despacho.FECHA_SALIDA_GUIA, ID_COMPRA: @v_guia_despacho.ID_COMPRA, ID_GUIA_DESPACHO: @v_guia_despacho.ID_GUIA_DESPACHO, ID_PROVEEDOR: @v_guia_despacho.ID_PROVEEDOR, LOCAL_DESPACHO: @v_guia_despacho.LOCAL_DESPACHO, NOMBRE_BODEGUERO_ENCARGADO: @v_guia_despacho.NOMBRE_BODEGUERO_ENCARGADO, NOMBRE_PROVEEDOR: @v_guia_despacho.NOMBRE_PROVEEDOR, TIPO_MOVIMIENTO_GUIA: @v_guia_despacho.TIPO_MOVIMIENTO_GUIA, VEHICULO_GUIA: @v_guia_despacho.VEHICULO_GUIA }
    end

    assert_redirected_to v_guia_despacho_path(assigns(:v_guia_despacho))
  end

  test "should show v_guia_despacho" do
    get :show, id: @v_guia_despacho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_guia_despacho
    assert_response :success
  end

  test "should update v_guia_despacho" do
    patch :update, id: @v_guia_despacho, v_guia_despacho: { DESPACHO_LOCAL_GUIA: @v_guia_despacho.DESPACHO_LOCAL_GUIA, DESTINO_GUIA: @v_guia_despacho.DESTINO_GUIA, FECHA_RECEPCION_GUIA: @v_guia_despacho.FECHA_RECEPCION_GUIA, FECHA_SALIDA_GUIA: @v_guia_despacho.FECHA_SALIDA_GUIA, ID_COMPRA: @v_guia_despacho.ID_COMPRA, ID_GUIA_DESPACHO: @v_guia_despacho.ID_GUIA_DESPACHO, ID_PROVEEDOR: @v_guia_despacho.ID_PROVEEDOR, LOCAL_DESPACHO: @v_guia_despacho.LOCAL_DESPACHO, NOMBRE_BODEGUERO_ENCARGADO: @v_guia_despacho.NOMBRE_BODEGUERO_ENCARGADO, NOMBRE_PROVEEDOR: @v_guia_despacho.NOMBRE_PROVEEDOR, TIPO_MOVIMIENTO_GUIA: @v_guia_despacho.TIPO_MOVIMIENTO_GUIA, VEHICULO_GUIA: @v_guia_despacho.VEHICULO_GUIA }
    assert_redirected_to v_guia_despacho_path(assigns(:v_guia_despacho))
  end

  test "should destroy v_guia_despacho" do
    assert_difference('VGuiaDespacho.count', -1) do
      delete :destroy, id: @v_guia_despacho
    end

    assert_redirected_to v_guia_despacho_index_path
  end
end
