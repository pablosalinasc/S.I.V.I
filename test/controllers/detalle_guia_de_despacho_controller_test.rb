require 'test_helper'

class DetalleGuiaDeDespachoControllerTest < ActionController::TestCase
  setup do
    @detalle_guia_de_despacho = detalle_guia_de_despacho(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_guia_de_despacho)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_guia_de_despacho" do
    assert_difference('DetalleGuiaDeDespacho.count') do
      post :create, detalle_guia_de_despacho: { CANTIDAD_GUIA: @detalle_guia_de_despacho.CANTIDAD_GUIA, CODIGO_INSUMO: @detalle_guia_de_despacho.CODIGO_INSUMO, ID_GUIA_DESPACHO: @detalle_guia_de_despacho.ID_GUIA_DESPACHO, ID_INSUMO: @detalle_guia_de_despacho.ID_INSUMO, ID_PROVEEDOR: @detalle_guia_de_despacho.ID_PROVEEDOR, LINEA_GUIA: @detalle_guia_de_despacho.LINEA_GUIA, PRECIO_GUIA: @detalle_guia_de_despacho.PRECIO_GUIA }
    end

    assert_redirected_to detalle_guia_de_despacho_path(assigns(:detalle_guia_de_despacho))
  end

  test "should show detalle_guia_de_despacho" do
    get :show, id: @detalle_guia_de_despacho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_guia_de_despacho
    assert_response :success
  end

  test "should update detalle_guia_de_despacho" do
    patch :update, id: @detalle_guia_de_despacho, detalle_guia_de_despacho: { CANTIDAD_GUIA: @detalle_guia_de_despacho.CANTIDAD_GUIA, CODIGO_INSUMO: @detalle_guia_de_despacho.CODIGO_INSUMO, ID_GUIA_DESPACHO: @detalle_guia_de_despacho.ID_GUIA_DESPACHO, ID_INSUMO: @detalle_guia_de_despacho.ID_INSUMO, ID_PROVEEDOR: @detalle_guia_de_despacho.ID_PROVEEDOR, LINEA_GUIA: @detalle_guia_de_despacho.LINEA_GUIA, PRECIO_GUIA: @detalle_guia_de_despacho.PRECIO_GUIA }
    assert_redirected_to detalle_guia_de_despacho_path(assigns(:detalle_guia_de_despacho))
  end

  test "should destroy detalle_guia_de_despacho" do
    assert_difference('DetalleGuiaDeDespacho.count', -1) do
      delete :destroy, id: @detalle_guia_de_despacho
    end

    assert_redirected_to detalle_guia_de_despacho_index_path
  end
end
