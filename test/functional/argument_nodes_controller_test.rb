require 'test_helper'

class ArgumentNodesControllerTest < ActionController::TestCase
  setup do
    @argument_node = argument_nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:argument_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create argument_node" do
    assert_difference('ArgumentNode.count') do
      post :create, argument_node: @argument_node.attributes
    end

    assert_redirected_to argument_node_path(assigns(:argument_node))
  end

  test "should show argument_node" do
    get :show, id: @argument_node
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @argument_node
    assert_response :success
  end

  test "should update argument_node" do
    put :update, id: @argument_node, argument_node: @argument_node.attributes
    assert_redirected_to argument_node_path(assigns(:argument_node))
  end

  test "should destroy argument_node" do
    assert_difference('ArgumentNode.count', -1) do
      delete :destroy, id: @argument_node
    end

    assert_redirected_to argument_nodes_path
  end
end
