require 'test_helper'

class RutaControllerTest < ActionController::TestCase
  setup do
    @rutum = ruta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rutum" do
    assert_difference('Rutum.count') do
      post :create, rutum: { nombre: @rutum.nombre }
    end

    assert_redirected_to rutum_path(assigns(:rutum))
  end

  test "should show rutum" do
    get :show, id: @rutum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rutum
    assert_response :success
  end

  test "should update rutum" do
    patch :update, id: @rutum, rutum: { nombre: @rutum.nombre }
    assert_redirected_to rutum_path(assigns(:rutum))
  end

  test "should destroy rutum" do
    assert_difference('Rutum.count', -1) do
      delete :destroy, id: @rutum
    end

    assert_redirected_to ruta_path
  end
end
