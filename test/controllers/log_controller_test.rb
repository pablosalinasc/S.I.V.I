require 'test_helper'

class LogControllerTest < ActionController::TestCase
  setup do
    @log = log(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log" do
    assert_difference('Log.count') do
      post :create, log: { FECHA_LOG: @log.FECHA_LOG, ID_TUPLA_LOG: @log.ID_TUPLA_LOG, ID_USUARIO_LOG: @log.ID_USUARIO_LOG, NEW_VALUE_LOG: @log.NEW_VALUE_LOG, NOMBRE_TABLA_LOG: @log.NOMBRE_TABLA_LOG, OLD_VALUE_LOG: @log.OLD_VALUE_LOG }
    end

    assert_redirected_to log_path(assigns(:log))
  end

  test "should show log" do
    get :show, id: @log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @log
    assert_response :success
  end

  test "should update log" do
    patch :update, id: @log, log: { FECHA_LOG: @log.FECHA_LOG, ID_TUPLA_LOG: @log.ID_TUPLA_LOG, ID_USUARIO_LOG: @log.ID_USUARIO_LOG, NEW_VALUE_LOG: @log.NEW_VALUE_LOG, NOMBRE_TABLA_LOG: @log.NOMBRE_TABLA_LOG, OLD_VALUE_LOG: @log.OLD_VALUE_LOG }
    assert_redirected_to log_path(assigns(:log))
  end

  test "should destroy log" do
    assert_difference('Log.count', -1) do
      delete :destroy, id: @log
    end

    assert_redirected_to log_index_path
  end
end
