require 'test_helper'

class ProveedorControllerTest < ActionController::TestCase
  setup do
    @proveedor = proveedor(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proveedor)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proveedor" do
    assert_difference('Proveedor.count') do
      post :create, proveedor: { CIUDAD_PROVEEDOR: @proveedor.CIUDAD_PROVEEDOR, CORREO_PROVEEDOR: @proveedor.CORREO_PROVEEDOR, DIRECCION_PROVEEDOR: @proveedor.DIRECCION_PROVEEDOR, NOMBRE_PROVEEDOR: @proveedor.NOMBRE_PROVEEDOR, PAIS_PROVEEDOR: @proveedor.PAIS_PROVEEDOR }
    end

    assert_redirected_to proveedor_path(assigns(:proveedor))
  end

  test "should show proveedor" do
    get :show, id: @proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proveedor
    assert_response :success
  end

  test "should update proveedor" do
    patch :update, id: @proveedor, proveedor: { CIUDAD_PROVEEDOR: @proveedor.CIUDAD_PROVEEDOR, CORREO_PROVEEDOR: @proveedor.CORREO_PROVEEDOR, DIRECCION_PROVEEDOR: @proveedor.DIRECCION_PROVEEDOR, NOMBRE_PROVEEDOR: @proveedor.NOMBRE_PROVEEDOR, PAIS_PROVEEDOR: @proveedor.PAIS_PROVEEDOR }
    assert_redirected_to proveedor_path(assigns(:proveedor))
  end

  test "should destroy proveedor" do
    assert_difference('Proveedor.count', -1) do
      delete :destroy, id: @proveedor
    end

    assert_redirected_to proveedor_index_path
  end
end
