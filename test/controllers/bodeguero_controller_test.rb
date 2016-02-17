require 'test_helper'

class BodegueroControllerTest < ActionController::TestCase
  setup do
    @bodeguero = bodeguero(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bodeguero)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bodeguero" do
    assert_difference('Bodeguero.count') do
      post :create, bodeguero: { ID_LOCAL: @bodeguero.ID_LOCAL }
    end

    assert_redirected_to bodeguero_path(assigns(:bodeguero))
  end

  test "should show bodeguero" do
    get :show, id: @bodeguero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bodeguero
    assert_response :success
  end

  test "should update bodeguero" do
    patch :update, id: @bodeguero, bodeguero: { ID_LOCAL: @bodeguero.ID_LOCAL }
    assert_redirected_to bodeguero_path(assigns(:bodeguero))
  end

  test "should destroy bodeguero" do
    assert_difference('Bodeguero.count', -1) do
      delete :destroy, id: @bodeguero
    end

    assert_redirected_to bodeguero_index_path
  end
end
