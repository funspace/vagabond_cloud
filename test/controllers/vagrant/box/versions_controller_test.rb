require 'test_helper'

class Vagrant::Box::VersionsControllerTest < ActionController::TestCase
  setup do
    @vagrant_box_version = vagrant_box_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vagrant_box_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vagrant_box_version" do
    assert_difference('Vagrant::Box::Version.count') do
      post :create, vagrant_box_version: { description_html: @vagrant_box_version.description_html, description_markdown: @vagrant_box_version.description_markdown, providers_id: @vagrant_box_version.providers_id, status: @vagrant_box_version.status, version: @vagrant_box_version.version }
    end

    assert_redirected_to vagrant_box_version_path(assigns(:vagrant_box_version))
  end

  test "should show vagrant_box_version" do
    get :show, id: @vagrant_box_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vagrant_box_version
    assert_response :success
  end

  test "should update vagrant_box_version" do
    patch :update, id: @vagrant_box_version, vagrant_box_version: { description_html: @vagrant_box_version.description_html, description_markdown: @vagrant_box_version.description_markdown, providers_id: @vagrant_box_version.providers_id, status: @vagrant_box_version.status, version: @vagrant_box_version.version }
    assert_redirected_to vagrant_box_version_path(assigns(:vagrant_box_version))
  end

  test "should destroy vagrant_box_version" do
    assert_difference('Vagrant::Box::Version.count', -1) do
      delete :destroy, id: @vagrant_box_version
    end

    assert_redirected_to vagrant_box_versions_path
  end
end
