require 'test_helper'

class AdjsControllerTest < ActionController::TestCase
  setup do
    @adj = adjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adj" do
    assert_difference('Adj.count') do
      post :create, adj: { name: @adj.name }
    end

    assert_redirected_to adj_path(assigns(:adj))
  end

  test "should show adj" do
    get :show, id: @adj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adj
    assert_response :success
  end

  test "should update adj" do
    patch :update, id: @adj, adj: { name: @adj.name }
    assert_redirected_to adj_path(assigns(:adj))
  end

  test "should destroy adj" do
    assert_difference('Adj.count', -1) do
      delete :destroy, id: @adj
    end

    assert_redirected_to adjs_path
  end
end
