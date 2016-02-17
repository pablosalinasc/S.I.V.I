require 'test_helper'

class CompatibilidadControllerTest < ActionController::TestCase
  setup do
    @compatibilidad = compatibilidad(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compatibilidad)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compatibilidad" do
    assert_difference('Compatibilidad.count') do
      post :create, compatibilidad: { ID_INSUMO: @compatibilidad.ID_INSUMO, ID_MARCA: @compatibilidad.ID_MARCA }
    end

    assert_redirected_to compatibilidad_path(assigns(:compatibilidad))
  end

  test "should show compatibilidad" do
    get :show, id: @compatibilidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compatibilidad
    assert_response :success
  end

  test "should update compatibilidad" do
    patch :update, id: @compatibilidad, compatibilidad: { ID_INSUMO: @compatibilidad.ID_INSUMO, ID_MARCA: @compatibilidad.ID_MARCA }
    assert_redirected_to compatibilidad_path(assigns(:compatibilidad))
  end

  test "should destroy compatibilidad" do
    assert_difference('Compatibilidad.count', -1) do
      delete :destroy, id: @compatibilidad
    end

    assert_redirected_to compatibilidad_index_path
  end
end
