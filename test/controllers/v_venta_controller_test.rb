require 'test_helper'

class VVentaControllerTest < ActionController::TestCase
  setup do
    @v_venta = v_venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_venta" do
    assert_difference('VVenta.count') do
      post :create, v_venta: { DIRECCION_LOCAL: @v_venta.DIRECCION_LOCAL, ID_VENTA: @v_venta.ID_VENTA, NOMBRE_CLIENTE: @v_venta.NOMBRE_CLIENTE, NOMBRE_VENDEDOR: @v_venta.NOMBRE_VENDEDOR }
    end

    assert_redirected_to v_venta_path(assigns(:v_venta))
  end

  test "should show v_venta" do
    get :show, id: @v_venta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_venta
    assert_response :success
  end

  test "should update v_venta" do
    patch :update, id: @v_venta, v_venta: { DIRECCION_LOCAL: @v_venta.DIRECCION_LOCAL, ID_VENTA: @v_venta.ID_VENTA, NOMBRE_CLIENTE: @v_venta.NOMBRE_CLIENTE, NOMBRE_VENDEDOR: @v_venta.NOMBRE_VENDEDOR }
    assert_redirected_to v_venta_path(assigns(:v_venta))
  end

  test "should destroy v_venta" do
    assert_difference('VVenta.count', -1) do
      delete :destroy, id: @v_venta
    end

    assert_redirected_to v_venta_index_path
  end
end
