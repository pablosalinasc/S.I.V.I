require 'test_helper'

class VResumenLocalControllerTest < ActionController::TestCase
  setup do
    @v_resumen_local = v_resumen_local(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_resumen_local)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_resumen_local" do
    assert_difference('VResumenLocal.count') do
      post :create, v_resumen_local: { CANTIDAD_BODEGUEROS: @v_resumen_local.CANTIDAD_BODEGUEROS, CANTIDAD_VENDEDORES: @v_resumen_local.CANTIDAD_VENDEDORES, DEVOLUCIONES_ULTIMO_MES: @v_resumen_local.DEVOLUCIONES_ULTIMO_MES, DIRECCION_LOCAL: @v_resumen_local.DIRECCION_LOCAL, ID_LOCAL: @v_resumen_local.ID_LOCAL, VENTAS_ULTIMO_MES: @v_resumen_local.VENTAS_ULTIMO_MES }
    end

    assert_redirected_to v_resumen_local_path(assigns(:v_resumen_local))
  end

  test "should show v_resumen_local" do
    get :show, id: @v_resumen_local
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_resumen_local
    assert_response :success
  end

  test "should update v_resumen_local" do
    patch :update, id: @v_resumen_local, v_resumen_local: { CANTIDAD_BODEGUEROS: @v_resumen_local.CANTIDAD_BODEGUEROS, CANTIDAD_VENDEDORES: @v_resumen_local.CANTIDAD_VENDEDORES, DEVOLUCIONES_ULTIMO_MES: @v_resumen_local.DEVOLUCIONES_ULTIMO_MES, DIRECCION_LOCAL: @v_resumen_local.DIRECCION_LOCAL, ID_LOCAL: @v_resumen_local.ID_LOCAL, VENTAS_ULTIMO_MES: @v_resumen_local.VENTAS_ULTIMO_MES }
    assert_redirected_to v_resumen_local_path(assigns(:v_resumen_local))
  end

  test "should destroy v_resumen_local" do
    assert_difference('VResumenLocal.count', -1) do
      delete :destroy, id: @v_resumen_local
    end

    assert_redirected_to v_resumen_local_index_path
  end
end
