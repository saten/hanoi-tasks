require 'test_helper'

class TaskGroupsControllerTest < ActionController::TestCase
  setup do
    @task_group = task_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_group" do
    assert_difference('TaskGroup.count') do
      post :create, :task_group => @task_group.attributes
    end

    assert_redirected_to task_group_path(assigns(:task_group))
  end

  test "should show task_group" do
    get :show, :id => @task_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @task_group.to_param
    assert_response :success
  end

  test "should update task_group" do
    put :update, :id => @task_group.to_param, :task_group => @task_group.attributes
    assert_redirected_to task_group_path(assigns(:task_group))
  end

  test "should destroy task_group" do
    assert_difference('TaskGroup.count', -1) do
      delete :destroy, :id => @task_group.to_param
    end

    assert_redirected_to task_groups_path
  end
end
