require 'test_helper'

class InsumoLocalControllerTest < ActionController::TestCase
  setup do
    @insumo_local = insumo_local(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insumo_local)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insumo_local" do
    assert_difference('InsumoLocal.count') do
      post :create, insumo_local: { ID_INSUMO: @insumo_local.ID_INSUMO, ID_LOCAL: @insumo_local.ID_LOCAL, STOCK_INSUMO_LOCAL: @insumo_local.STOCK_INSUMO_LOCAL }
    end

    assert_redirected_to insumo_local_path(assigns(:insumo_local))
  end

  test "should show insumo_local" do
    get :show, id: @insumo_local
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insumo_local
    assert_response :success
  end

  test "should update insumo_local" do
    patch :update, id: @insumo_local, insumo_local: { ID_INSUMO: @insumo_local.ID_INSUMO, ID_LOCAL: @insumo_local.ID_LOCAL, STOCK_INSUMO_LOCAL: @insumo_local.STOCK_INSUMO_LOCAL }
    assert_redirected_to insumo_local_path(assigns(:insumo_local))
  end

  test "should destroy insumo_local" do
    assert_difference('InsumoLocal.count', -1) do
      delete :destroy, id: @insumo_local
    end

    assert_redirected_to insumo_local_index_path
  end
end
