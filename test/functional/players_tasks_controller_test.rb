require 'test_helper'

class PlayersTasksControllerTest < ActionController::TestCase
  setup do
    @players_task = players_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create players_task" do
    assert_difference('PlayersTask.count') do
      post :create, :players_task => @players_task.attributes
    end

    assert_redirected_to players_task_path(assigns(:players_task))
  end

  test "should show players_task" do
    get :show, :id => @players_task.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @players_task.to_param
    assert_response :success
  end

  test "should update players_task" do
    put :update, :id => @players_task.to_param, :players_task => @players_task.attributes
    assert_redirected_to players_task_path(assigns(:players_task))
  end

  test "should destroy players_task" do
    assert_difference('PlayersTask.count', -1) do
      delete :destroy, :id => @players_task.to_param
    end

    assert_redirected_to players_tasks_path
  end
end
