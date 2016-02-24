require 'test_helper'

class VDetalleGuiaControllerTest < ActionController::TestCase
  setup do
    @v_detalle_guia = v_detalle_guia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_detalle_guia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_detalle_guia" do
    assert_difference('VDetalleGuia.count') do
      post :create, v_detalle_guia: { CANTIDAD_GUIA: @v_detalle_guia.CANTIDAD_GUIA, CODIGO_INSUMO: @v_detalle_guia.CODIGO_INSUMO, ID_GUIA_DESPACHO: @v_detalle_guia.ID_GUIA_DESPACHO, ID_INSUMO: @v_detalle_guia.ID_INSUMO, ID_PROVEEDOR: @v_detalle_guia.ID_PROVEEDOR, LINEA_GUIA: @v_detalle_guia.LINEA_GUIA, NOMBRE_UNICO_INSUMO: @v_detalle_guia.NOMBRE_UNICO_INSUMO, PRECIO_GUIA: @v_detalle_guia.PRECIO_GUIA }
    end

    assert_redirected_to v_detalle_guia_path(assigns(:v_detalle_guia))
  end

  test "should show v_detalle_guia" do
    get :show, id: @v_detalle_guia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_detalle_guia
    assert_response :success
  end

  test "should update v_detalle_guia" do
    patch :update, id: @v_detalle_guia, v_detalle_guia: { CANTIDAD_GUIA: @v_detalle_guia.CANTIDAD_GUIA, CODIGO_INSUMO: @v_detalle_guia.CODIGO_INSUMO, ID_GUIA_DESPACHO: @v_detalle_guia.ID_GUIA_DESPACHO, ID_INSUMO: @v_detalle_guia.ID_INSUMO, ID_PROVEEDOR: @v_detalle_guia.ID_PROVEEDOR, LINEA_GUIA: @v_detalle_guia.LINEA_GUIA, NOMBRE_UNICO_INSUMO: @v_detalle_guia.NOMBRE_UNICO_INSUMO, PRECIO_GUIA: @v_detalle_guia.PRECIO_GUIA }
    assert_redirected_to v_detalle_guia_path(assigns(:v_detalle_guia))
  end

  test "should destroy v_detalle_guia" do
    assert_difference('VDetalleGuia.count', -1) do
      delete :destroy, id: @v_detalle_guia
    end

    assert_redirected_to v_detalle_guia_index_path
  end
end
