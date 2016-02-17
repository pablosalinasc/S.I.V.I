require 'test_helper'

class GuiaLocalBodegueroControllerTest < ActionController::TestCase
  setup do
    @guia_local_bodeguero = guia_local_bodeguero(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guia_local_bodeguero)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guia_local_bodeguero" do
    assert_difference('GuiaLocalBodeguero.count') do
      post :create, guia_local_bodeguero: { ID_BODEGUERO: @guia_local_bodeguero.ID_BODEGUERO, ID_GUIA_DESPACHO: @guia_local_bodeguero.ID_GUIA_DESPACHO, ID_LOCAL: @guia_local_bodeguero.ID_LOCAL }
    end

    assert_redirected_to guia_local_bodeguero_path(assigns(:guia_local_bodeguero))
  end

  test "should show guia_local_bodeguero" do
    get :show, id: @guia_local_bodeguero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guia_local_bodeguero
    assert_response :success
  end

  test "should update guia_local_bodeguero" do
    patch :update, id: @guia_local_bodeguero, guia_local_bodeguero: { ID_BODEGUERO: @guia_local_bodeguero.ID_BODEGUERO, ID_GUIA_DESPACHO: @guia_local_bodeguero.ID_GUIA_DESPACHO, ID_LOCAL: @guia_local_bodeguero.ID_LOCAL }
    assert_redirected_to guia_local_bodeguero_path(assigns(:guia_local_bodeguero))
  end

  test "should destroy guia_local_bodeguero" do
    assert_difference('GuiaLocalBodeguero.count', -1) do
      delete :destroy, id: @guia_local_bodeguero
    end

    assert_redirected_to guia_local_bodeguero_index_path
  end
end
