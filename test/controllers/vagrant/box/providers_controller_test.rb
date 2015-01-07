require 'test_helper'

class Vagrant::Box::ProvidersControllerTest < ActionController::TestCase
  setup do
    @vagrant_box_provider = vagrant_box_providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vagrant_box_providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vagrant_box_provider" do
    assert_difference('Vagrant::Box::Provider.count') do
      post :create, vagrant_box_provider: { name: @vagrant_box_provider.name, url: @vagrant_box_provider.url }
    end

    assert_redirected_to vagrant_box_provider_path(assigns(:vagrant_box_provider))
  end

  test "should show vagrant_box_provider" do
    get :show, id: @vagrant_box_provider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vagrant_box_provider
    assert_response :success
  end

  test "should update vagrant_box_provider" do
    patch :update, id: @vagrant_box_provider, vagrant_box_provider: { name: @vagrant_box_provider.name, url: @vagrant_box_provider.url }
    assert_redirected_to vagrant_box_provider_path(assigns(:vagrant_box_provider))
  end

  test "should destroy vagrant_box_provider" do
    assert_difference('Vagrant::Box::Provider.count', -1) do
      delete :destroy, id: @vagrant_box_provider
    end

    assert_redirected_to vagrant_box_providers_path
  end
end
