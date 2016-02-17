require 'test_helper'

class ParametroControllerTest < ActionController::TestCase
  setup do
    @parametro = parametro(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parametro)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parametro" do
    assert_difference('Parametro.count') do
      post :create, parametro: { NOMBRE_PARAMETRO: @parametro.NOMBRE_PARAMETRO, VALOR_PARAMETRO: @parametro.VALOR_PARAMETRO }
    end

    assert_redirected_to parametro_path(assigns(:parametro))
  end

  test "should show parametro" do
    get :show, id: @parametro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parametro
    assert_response :success
  end

  test "should update parametro" do
    patch :update, id: @parametro, parametro: { NOMBRE_PARAMETRO: @parametro.NOMBRE_PARAMETRO, VALOR_PARAMETRO: @parametro.VALOR_PARAMETRO }
    assert_redirected_to parametro_path(assigns(:parametro))
  end

  test "should destroy parametro" do
    assert_difference('Parametro.count', -1) do
      delete :destroy, id: @parametro
    end

    assert_redirected_to parametro_index_path
  end
end
