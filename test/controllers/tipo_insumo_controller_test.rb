require 'test_helper'

class TipoInsumoControllerTest < ActionController::TestCase
  setup do
    @tipo_insumo = tipo_insumo(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_insumo)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_insumo" do
    assert_difference('TipoInsumo.count') do
      post :create, tipo_insumo: { COMPATIBILIDAD_INSUMO: @tipo_insumo.COMPATIBILIDAD_INSUMO, NOMBRE_INSUMO: @tipo_insumo.NOMBRE_INSUMO }
    end

    assert_redirected_to tipo_insumo_path(assigns(:tipo_insumo))
  end

  test "should show tipo_insumo" do
    get :show, id: @tipo_insumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_insumo
    assert_response :success
  end

  test "should update tipo_insumo" do
    patch :update, id: @tipo_insumo, tipo_insumo: { COMPATIBILIDAD_INSUMO: @tipo_insumo.COMPATIBILIDAD_INSUMO, NOMBRE_INSUMO: @tipo_insumo.NOMBRE_INSUMO }
    assert_redirected_to tipo_insumo_path(assigns(:tipo_insumo))
  end

  test "should destroy tipo_insumo" do
    assert_difference('TipoInsumo.count', -1) do
      delete :destroy, id: @tipo_insumo
    end

    assert_redirected_to tipo_insumo_index_path
  end
end
