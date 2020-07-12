require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  setup do
    @task = tasks(:one)
  end
  
 test "layout links" do
    get root_path
    assert_template 'tasks/index'
    assert_select "a[href=?]", root_path, count: 0
    assert_select "a[href=?]", edit_task_path(@task)
    assert_select "a[href=?]", new_task_path
    assert_select "a[href=?]", task_path(@task)
  end
end
