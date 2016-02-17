require 'test_helper'

class VResumenVendedorControllerTest < ActionController::TestCase
  setup do
    @v_resumen_vendedor = v_resumen_vendedor(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_resumen_vendedor)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_resumen_vendedor" do
    assert_difference('VResumenVendedor.count') do
      post :create, v_resumen_vendedor: { CORREO_USUARIO: @v_resumen_vendedor.CORREO_USUARIO, DEVOLUCIONES: @v_resumen_vendedor.DEVOLUCIONES, EDAD: @v_resumen_vendedor.EDAD, ID_USUARIO: @v_resumen_vendedor.ID_USUARIO, NOMBRE_USUARIO: @v_resumen_vendedor.NOMBRE_USUARIO, RUT_USUARIO: @v_resumen_vendedor.RUT_USUARIO, TELEFONO_USUARIO: @v_resumen_vendedor.TELEFONO_USUARIO, VENTAS: @v_resumen_vendedor.VENTAS }
    end

    assert_redirected_to v_resumen_vendedor_path(assigns(:v_resumen_vendedor))
  end

  test "should show v_resumen_vendedor" do
    get :show, id: @v_resumen_vendedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_resumen_vendedor
    assert_response :success
  end

  test "should update v_resumen_vendedor" do
    patch :update, id: @v_resumen_vendedor, v_resumen_vendedor: { CORREO_USUARIO: @v_resumen_vendedor.CORREO_USUARIO, DEVOLUCIONES: @v_resumen_vendedor.DEVOLUCIONES, EDAD: @v_resumen_vendedor.EDAD, ID_USUARIO: @v_resumen_vendedor.ID_USUARIO, NOMBRE_USUARIO: @v_resumen_vendedor.NOMBRE_USUARIO, RUT_USUARIO: @v_resumen_vendedor.RUT_USUARIO, TELEFONO_USUARIO: @v_resumen_vendedor.TELEFONO_USUARIO, VENTAS: @v_resumen_vendedor.VENTAS }
    assert_redirected_to v_resumen_vendedor_path(assigns(:v_resumen_vendedor))
  end

  test "should destroy v_resumen_vendedor" do
    assert_difference('VResumenVendedor.count', -1) do
      delete :destroy, id: @v_resumen_vendedor
    end

    assert_redirected_to v_resumen_vendedor_index_path
  end
end
