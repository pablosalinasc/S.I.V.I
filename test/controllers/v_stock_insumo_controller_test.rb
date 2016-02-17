require 'test_helper'

class VStockInsumoControllerTest < ActionController::TestCase
  setup do
    @v_stock_insumo = v_stock_insumo(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_stock_insumo)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_stock_insumo" do
    assert_difference('VStockInsumo.count') do
      post :create, v_stock_insumo: { DIRECCION_LOCAL: @v_stock_insumo.DIRECCION_LOCAL, ID_INSUMO: @v_stock_insumo.ID_INSUMO, STOCK_INSUMO_LOCAL: @v_stock_insumo.STOCK_INSUMO_LOCAL }
    end

    assert_redirected_to v_stock_insumo_path(assigns(:v_stock_insumo))
  end

  test "should show v_stock_insumo" do
    get :show, id: @v_stock_insumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_stock_insumo
    assert_response :success
  end

  test "should update v_stock_insumo" do
    patch :update, id: @v_stock_insumo, v_stock_insumo: { DIRECCION_LOCAL: @v_stock_insumo.DIRECCION_LOCAL, ID_INSUMO: @v_stock_insumo.ID_INSUMO, STOCK_INSUMO_LOCAL: @v_stock_insumo.STOCK_INSUMO_LOCAL }
    assert_redirected_to v_stock_insumo_path(assigns(:v_stock_insumo))
  end

  test "should destroy v_stock_insumo" do
    assert_difference('VStockInsumo.count', -1) do
      delete :destroy, id: @v_stock_insumo
    end

    assert_redirected_to v_stock_insumo_index_path
  end
end
