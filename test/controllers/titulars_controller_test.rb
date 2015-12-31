require 'test_helper'

class TitularsControllerTest < ActionController::TestCase
  setup do
    @titular = titulars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:titulars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create titular" do
    assert_difference('Titular.count') do
      post :create, titular: { materno: @titular.materno, nombre: @titular.nombre, paterno: @titular.paterno }
    end

    assert_redirected_to titular_path(assigns(:titular))
  end

  test "should show titular" do
    get :show, id: @titular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @titular
    assert_response :success
  end

  test "should update titular" do
    patch :update, id: @titular, titular: { materno: @titular.materno, nombre: @titular.nombre, paterno: @titular.paterno }
    assert_redirected_to titular_path(assigns(:titular))
  end

  test "should destroy titular" do
    assert_difference('Titular.count', -1) do
      delete :destroy, id: @titular
    end

    assert_redirected_to titulars_path
  end
end
