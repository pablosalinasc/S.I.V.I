require 'test_helper'

class VCompatibilidadControllerTest < ActionController::TestCase
  setup do
    @v_compatibilidad = v_compatibilidad(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_compatibilidad)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_compatibilidad" do
    assert_difference('VCompatibilidad.count') do
      post :create, v_compatibilidad: { ID_INSUMO: @v_compatibilidad.ID_INSUMO, ID_MARCA: @v_compatibilidad.ID_MARCA, NOMBRE_MARCA: @v_compatibilidad.NOMBRE_MARCA }
    end

    assert_redirected_to v_compatibilidad_path(assigns(:v_compatibilidad))
  end

  test "should show v_compatibilidad" do
    get :show, id: @v_compatibilidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_compatibilidad
    assert_response :success
  end

  test "should update v_compatibilidad" do
    patch :update, id: @v_compatibilidad, v_compatibilidad: { ID_INSUMO: @v_compatibilidad.ID_INSUMO, ID_MARCA: @v_compatibilidad.ID_MARCA, NOMBRE_MARCA: @v_compatibilidad.NOMBRE_MARCA }
    assert_redirected_to v_compatibilidad_path(assigns(:v_compatibilidad))
  end

  test "should destroy v_compatibilidad" do
    assert_difference('VCompatibilidad.count', -1) do
      delete :destroy, id: @v_compatibilidad
    end

    assert_redirected_to v_compatibilidad_index_path
  end
end
