require 'test_helper'

class PropiedadValorControllerTest < ActionController::TestCase
  setup do
    @propiedad_valor = propiedad_valor(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propiedad_valor)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propiedad_valor" do
    assert_difference('PropiedadValor.count') do
      post :create, propiedad_valor: { ID_INSUMO: @propiedad_valor.ID_INSUMO, ID_PROPIEDAD: @propiedad_valor.ID_PROPIEDAD, VALOR: @propiedad_valor.VALOR }
    end

    assert_redirected_to propiedad_valor_path(assigns(:propiedad_valor))
  end

  test "should show propiedad_valor" do
    get :show, id: @propiedad_valor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propiedad_valor
    assert_response :success
  end

  test "should update propiedad_valor" do
    patch :update, id: @propiedad_valor, propiedad_valor: { ID_INSUMO: @propiedad_valor.ID_INSUMO, ID_PROPIEDAD: @propiedad_valor.ID_PROPIEDAD, VALOR: @propiedad_valor.VALOR }
    assert_redirected_to propiedad_valor_path(assigns(:propiedad_valor))
  end

  test "should destroy propiedad_valor" do
    assert_difference('PropiedadValor.count', -1) do
      delete :destroy, id: @propiedad_valor
    end

    assert_redirected_to propiedad_valor_index_path
  end
end
