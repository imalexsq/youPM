require 'test_helper'

class PropertyUnitsControllerTest < ActionController::TestCase
  setup do
    @property_unit = property_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_unit" do
    assert_difference('PropertyUnit.count') do
      post :create, property_unit: @property_unit.attributes
    end

    assert_redirected_to property_unit_path(assigns(:property_unit))
  end

  test "should show property_unit" do
    get :show, id: @property_unit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_unit.to_param
    assert_response :success
  end

  test "should update property_unit" do
    put :update, id: @property_unit.to_param, property_unit: @property_unit.attributes
    assert_redirected_to property_unit_path(assigns(:property_unit))
  end

  test "should destroy property_unit" do
    assert_difference('PropertyUnit.count', -1) do
      delete :destroy, id: @property_unit.to_param
    end

    assert_redirected_to property_units_path
  end
end
