require 'test_helper'

class GroupAdjsControllerTest < ActionController::TestCase
  setup do
    @group_adj = group_adjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_adjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_adj" do
    assert_difference('GroupAdj.count') do
      post :create, group_adj: { adj_id: @group_adj.adj_id, name: @group_adj.name }
    end

    assert_redirected_to group_adj_path(assigns(:group_adj))
  end

  test "should show group_adj" do
    get :show, id: @group_adj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_adj
    assert_response :success
  end

  test "should update group_adj" do
    patch :update, id: @group_adj, group_adj: { adj_id: @group_adj.adj_id, name: @group_adj.name }
    assert_redirected_to group_adj_path(assigns(:group_adj))
  end

  test "should destroy group_adj" do
    assert_difference('GroupAdj.count', -1) do
      delete :destroy, id: @group_adj
    end

    assert_redirected_to group_adjs_path
  end
end
