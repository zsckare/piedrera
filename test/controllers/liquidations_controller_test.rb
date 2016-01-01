require 'test_helper'

class LiquidationsControllerTest < ActionController::TestCase
  setup do
    @liquidation = liquidations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liquidations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liquidation" do
    assert_difference('Liquidation.count') do
      post :create, liquidation: { ahorro: @liquidation.ahorro, driver_id: @liquidation.driver_id, efectivo: @liquidation.efectivo, gastos: @liquidation.gastos, otro: @liquidation.otro, terreno: @liquidation.terreno, truck: @liquidation.truck, turno: @liquidation.turno }
    end

    assert_redirected_to liquidation_path(assigns(:liquidation))
  end

  test "should show liquidation" do
    get :show, id: @liquidation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liquidation
    assert_response :success
  end

  test "should update liquidation" do
    patch :update, id: @liquidation, liquidation: { ahorro: @liquidation.ahorro, driver_id: @liquidation.driver_id, efectivo: @liquidation.efectivo, gastos: @liquidation.gastos, otro: @liquidation.otro, terreno: @liquidation.terreno, truck: @liquidation.truck, turno: @liquidation.turno }
    assert_redirected_to liquidation_path(assigns(:liquidation))
  end

  test "should destroy liquidation" do
    assert_difference('Liquidation.count', -1) do
      delete :destroy, id: @liquidation
    end

    assert_redirected_to liquidations_path
  end
end
