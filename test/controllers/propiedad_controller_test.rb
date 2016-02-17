require 'test_helper'

class PropiedadControllerTest < ActionController::TestCase
  setup do
    @propiedad = propiedad(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propiedad)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propiedad" do
    assert_difference('Propiedad.count') do
      post :create, propiedad: { EJEMPLO_VALOR_PROPIEDAD: @propiedad.EJEMPLO_VALOR_PROPIEDAD, NOMBRE_PROPIEDAD: @propiedad.NOMBRE_PROPIEDAD }
    end

    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should show propiedad" do
    get :show, id: @propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propiedad
    assert_response :success
  end

  test "should update propiedad" do
    patch :update, id: @propiedad, propiedad: { EJEMPLO_VALOR_PROPIEDAD: @propiedad.EJEMPLO_VALOR_PROPIEDAD, NOMBRE_PROPIEDAD: @propiedad.NOMBRE_PROPIEDAD }
    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should destroy propiedad" do
    assert_difference('Propiedad.count', -1) do
      delete :destroy, id: @propiedad
    end

    assert_redirected_to propiedad_index_path
  end
end
