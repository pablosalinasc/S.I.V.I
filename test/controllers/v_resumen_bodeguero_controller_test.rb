require 'test_helper'

class VResumenBodegueroControllerTest < ActionController::TestCase
  setup do
    @v_resumen_bodeguero = v_resumen_bodeguero(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_resumen_bodeguero)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_resumen_bodeguero" do
    assert_difference('VResumenBodeguero.count') do
      post :create, v_resumen_bodeguero: { COMPRAS: @v_resumen_bodeguero.COMPRAS, CORREO_USUARIO: @v_resumen_bodeguero.CORREO_USUARIO, EDAD: @v_resumen_bodeguero.EDAD, ID_USUARIO: @v_resumen_bodeguero.ID_USUARIO, NOMBRE_USUARIO: @v_resumen_bodeguero.NOMBRE_USUARIO, RUT_USUARIO: @v_resumen_bodeguero.RUT_USUARIO, TELEFONO_USUARIO: @v_resumen_bodeguero.TELEFONO_USUARIO, VENTAS: @v_resumen_bodeguero.VENTAS }
    end

    assert_redirected_to v_resumen_bodeguero_path(assigns(:v_resumen_bodeguero))
  end

  test "should show v_resumen_bodeguero" do
    get :show, id: @v_resumen_bodeguero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_resumen_bodeguero
    assert_response :success
  end

  test "should update v_resumen_bodeguero" do
    patch :update, id: @v_resumen_bodeguero, v_resumen_bodeguero: { COMPRAS: @v_resumen_bodeguero.COMPRAS, CORREO_USUARIO: @v_resumen_bodeguero.CORREO_USUARIO, EDAD: @v_resumen_bodeguero.EDAD, ID_USUARIO: @v_resumen_bodeguero.ID_USUARIO, NOMBRE_USUARIO: @v_resumen_bodeguero.NOMBRE_USUARIO, RUT_USUARIO: @v_resumen_bodeguero.RUT_USUARIO, TELEFONO_USUARIO: @v_resumen_bodeguero.TELEFONO_USUARIO, VENTAS: @v_resumen_bodeguero.VENTAS }
    assert_redirected_to v_resumen_bodeguero_path(assigns(:v_resumen_bodeguero))
  end

  test "should destroy v_resumen_bodeguero" do
    assert_difference('VResumenBodeguero.count', -1) do
      delete :destroy, id: @v_resumen_bodeguero
    end

    assert_redirected_to v_resumen_bodeguero_index_path
  end
end
