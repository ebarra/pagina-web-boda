require 'test_helper'

class TemazosControllerTest < ActionController::TestCase
  setup do
    @temazo = temazos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temazos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temazo" do
    assert_difference('Temazo.count') do
      post :create, temazo: { autor: @temazo.autor, nombre: @temazo.nombre, tema: @temazo.tema }
    end

    assert_redirected_to temazo_path(assigns(:temazo))
  end

  test "should show temazo" do
    get :show, id: @temazo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temazo
    assert_response :success
  end

  test "should update temazo" do
    put :update, id: @temazo, temazo: { autor: @temazo.autor, nombre: @temazo.nombre, tema: @temazo.tema }
    assert_redirected_to temazo_path(assigns(:temazo))
  end

  test "should destroy temazo" do
    assert_difference('Temazo.count', -1) do
      delete :destroy, id: @temazo
    end

    assert_redirected_to temazos_path
  end
end
