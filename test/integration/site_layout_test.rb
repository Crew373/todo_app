require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  setup do
    @task = tasks(:one)
  end
  
  test "layout links" do
    get root_path
    assert_template 'tasks/index'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", edit_task_path(@task)
    assert_select "a[href=?]", new_path
    assert_select "a[href=?]", task_path(@task)
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", signup_path
  end
end