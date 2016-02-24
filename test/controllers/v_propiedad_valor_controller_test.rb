require 'test_helper'

class VPropiedadValorControllerTest < ActionController::TestCase
  setup do
    @v_propiedad_valor = v_propiedad_valor(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_propiedad_valor)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_propiedad_valor" do
    assert_difference('VPropiedadValor.count') do
      post :create, v_propiedad_valor: { ID_INSUMO: @v_propiedad_valor.ID_INSUMO, ID_PROPIEDAD: @v_propiedad_valor.ID_PROPIEDAD, NOMBRE_PROPIEDAD: @v_propiedad_valor.NOMBRE_PROPIEDAD, VALOR: @v_propiedad_valor.VALOR }
    end

    assert_redirected_to v_propiedad_valor_path(assigns(:v_propiedad_valor))
  end

  test "should show v_propiedad_valor" do
    get :show, id: @v_propiedad_valor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_propiedad_valor
    assert_response :success
  end

  test "should update v_propiedad_valor" do
    patch :update, id: @v_propiedad_valor, v_propiedad_valor: { ID_INSUMO: @v_propiedad_valor.ID_INSUMO, ID_PROPIEDAD: @v_propiedad_valor.ID_PROPIEDAD, NOMBRE_PROPIEDAD: @v_propiedad_valor.NOMBRE_PROPIEDAD, VALOR: @v_propiedad_valor.VALOR }
    assert_redirected_to v_propiedad_valor_path(assigns(:v_propiedad_valor))
  end

  test "should destroy v_propiedad_valor" do
    assert_difference('VPropiedadValor.count', -1) do
      delete :destroy, id: @v_propiedad_valor
    end

    assert_redirected_to v_propiedad_valor_index_path
  end
end
