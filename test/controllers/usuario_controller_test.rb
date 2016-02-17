require 'test_helper'

class UsuarioControllerTest < ActionController::TestCase
  setup do
    @usuario = usuario(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { CORREO_USUARIO: @usuario.CORREO_USUARIO, FECHA_NACIMIENTO_USUARIO: @usuario.FECHA_NACIMIENTO_USUARIO, NOMBRE_USUARIO: @usuario.NOMBRE_USUARIO, ROL_USUARIO: @usuario.ROL_USUARIO, RUT_USUARIO: @usuario.RUT_USUARIO, TELEFONO_USUARIO: @usuario.TELEFONO_USUARIO }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { CORREO_USUARIO: @usuario.CORREO_USUARIO, FECHA_NACIMIENTO_USUARIO: @usuario.FECHA_NACIMIENTO_USUARIO, NOMBRE_USUARIO: @usuario.NOMBRE_USUARIO, ROL_USUARIO: @usuario.ROL_USUARIO, RUT_USUARIO: @usuario.RUT_USUARIO, TELEFONO_USUARIO: @usuario.TELEFONO_USUARIO }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuario_index_path
  end
end
