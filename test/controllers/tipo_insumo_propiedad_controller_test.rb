require 'test_helper'

class TipoInsumoPropiedadControllerTest < ActionController::TestCase
  setup do
    @tipo_insumo_propiedad = tipo_insumo_propiedad(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_insumo_propiedad)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_insumo_propiedad" do
    assert_difference('TipoInsumoPropiedad.count') do
      post :create, tipo_insumo_propiedad: { ID_PROPIEDAD: @tipo_insumo_propiedad.ID_PROPIEDAD, ID_TIPO_INSUMO: @tipo_insumo_propiedad.ID_TIPO_INSUMO, PRINCIPAL_PROPIEDAD: @tipo_insumo_propiedad.PRINCIPAL_PROPIEDAD }
    end

    assert_redirected_to tipo_insumo_propiedad_path(assigns(:tipo_insumo_propiedad))
  end

  test "should show tipo_insumo_propiedad" do
    get :show, id: @tipo_insumo_propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_insumo_propiedad
    assert_response :success
  end

  test "should update tipo_insumo_propiedad" do
    patch :update, id: @tipo_insumo_propiedad, tipo_insumo_propiedad: { ID_PROPIEDAD: @tipo_insumo_propiedad.ID_PROPIEDAD, ID_TIPO_INSUMO: @tipo_insumo_propiedad.ID_TIPO_INSUMO, PRINCIPAL_PROPIEDAD: @tipo_insumo_propiedad.PRINCIPAL_PROPIEDAD }
    assert_redirected_to tipo_insumo_propiedad_path(assigns(:tipo_insumo_propiedad))
  end

  test "should destroy tipo_insumo_propiedad" do
    assert_difference('TipoInsumoPropiedad.count', -1) do
      delete :destroy, id: @tipo_insumo_propiedad
    end

    assert_redirected_to tipo_insumo_propiedad_index_path
  end
end
