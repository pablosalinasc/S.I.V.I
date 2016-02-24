require 'test_helper'

class VDetalleCompraControllerTest < ActionController::TestCase
  setup do
    @v_detalle_compra = v_detalle_compra(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_detalle_compra)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_detalle_compra" do
    assert_difference('VDetalleCompra.count') do
      post :create, v_detalle_compra: { CANTIDAD_COMPRA: @v_detalle_compra.CANTIDAD_COMPRA, CODIGO_INSUMO: @v_detalle_compra.CODIGO_INSUMO, ID_COMPRA: @v_detalle_compra.ID_COMPRA, ID_INSUMO: @v_detalle_compra.ID_INSUMO, ID_PROVEEDOR: @v_detalle_compra.ID_PROVEEDOR, LINEA_COMPRA: @v_detalle_compra.LINEA_COMPRA, NOMBRE_UNICO_INSUMO: @v_detalle_compra.NOMBRE_UNICO_INSUMO, PRECIO_COMPRA: @v_detalle_compra.PRECIO_COMPRA }
    end

    assert_redirected_to v_detalle_compra_path(assigns(:v_detalle_compra))
  end

  test "should show v_detalle_compra" do
    get :show, id: @v_detalle_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_detalle_compra
    assert_response :success
  end

  test "should update v_detalle_compra" do
    patch :update, id: @v_detalle_compra, v_detalle_compra: { CANTIDAD_COMPRA: @v_detalle_compra.CANTIDAD_COMPRA, CODIGO_INSUMO: @v_detalle_compra.CODIGO_INSUMO, ID_COMPRA: @v_detalle_compra.ID_COMPRA, ID_INSUMO: @v_detalle_compra.ID_INSUMO, ID_PROVEEDOR: @v_detalle_compra.ID_PROVEEDOR, LINEA_COMPRA: @v_detalle_compra.LINEA_COMPRA, NOMBRE_UNICO_INSUMO: @v_detalle_compra.NOMBRE_UNICO_INSUMO, PRECIO_COMPRA: @v_detalle_compra.PRECIO_COMPRA }
    assert_redirected_to v_detalle_compra_path(assigns(:v_detalle_compra))
  end

  test "should destroy v_detalle_compra" do
    assert_difference('VDetalleCompra.count', -1) do
      delete :destroy, id: @v_detalle_compra
    end

    assert_redirected_to v_detalle_compra_index_path
  end
end
