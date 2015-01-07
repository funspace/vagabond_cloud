require 'test_helper'

class Vagrant::BoxesControllerTest < ActionController::TestCase
  setup do
    @vagrant_box = vagrant_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vagrant_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vagrant_box" do
    assert_difference('Vagrant::Box.count') do
      post :create, vagrant_box: { description: @vagrant_box.description, name: @vagrant_box.name, short_description: @vagrant_box.short_description, versions_id: @vagrant_box.versions_id }
    end

    assert_redirected_to vagrant_box_path(assigns(:vagrant_box))
  end

  test "should show vagrant_box" do
    get :show, id: @vagrant_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vagrant_box
    assert_response :success
  end

  test "should update vagrant_box" do
    patch :update, id: @vagrant_box, vagrant_box: { description: @vagrant_box.description, name: @vagrant_box.name, short_description: @vagrant_box.short_description, versions_id: @vagrant_box.versions_id }
    assert_redirected_to vagrant_box_path(assigns(:vagrant_box))
  end

  test "should destroy vagrant_box" do
    assert_difference('Vagrant::Box.count', -1) do
      delete :destroy, id: @vagrant_box
    end

    assert_redirected_to vagrant_boxes_path
  end
end
