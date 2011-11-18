require 'test_helper'

class PropertyAssetsControllerTest < ActionController::TestCase
  setup do
    @property_asset = property_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_asset" do
    assert_difference('PropertyAsset.count') do
      post :create, property_asset: @property_asset.attributes
    end

    assert_redirected_to property_asset_path(assigns(:property_asset))
  end

  test "should show property_asset" do
    get :show, id: @property_asset.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_asset.to_param
    assert_response :success
  end

  test "should update property_asset" do
    put :update, id: @property_asset.to_param, property_asset: @property_asset.attributes
    assert_redirected_to property_asset_path(assigns(:property_asset))
  end

  test "should destroy property_asset" do
    assert_difference('PropertyAsset.count', -1) do
      delete :destroy, id: @property_asset.to_param
    end

    assert_redirected_to property_assets_path
  end
end
