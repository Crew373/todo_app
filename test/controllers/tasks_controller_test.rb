require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get new" do
    get new_task_path
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_path, params: { task: { title: @task.title } }
    end

    assert_redirected_to task_path(Task.last)
  end

  test "should show task" do
    get task_path(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_path(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_path(@task), params: { task: { title: @task.title } }
    assert_redirected_to login_path
  end

  test "should remove task" do
    assert_difference('Task.count', -1) do
      delete task_path(@task)
    end

    assert_redirected_to tasks_path
  end
end
