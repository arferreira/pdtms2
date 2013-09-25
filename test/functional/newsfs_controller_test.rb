require 'test_helper'

class NewsfsControllerTest < ActionController::TestCase
  setup do
    @newsf = newsfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsf" do
    assert_difference('Newsf.count') do
      post :create, newsf: { author: @newsf.author, content: @newsf.content, date: @newsf.date, description: @newsf.description, title: @newsf.title }
    end

    assert_redirected_to newsf_path(assigns(:newsf))
  end

  test "should show newsf" do
    get :show, id: @newsf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsf
    assert_response :success
  end

  test "should update newsf" do
    put :update, id: @newsf, newsf: { author: @newsf.author, content: @newsf.content, date: @newsf.date, description: @newsf.description, title: @newsf.title }
    assert_redirected_to newsf_path(assigns(:newsf))
  end

  test "should destroy newsf" do
    assert_difference('Newsf.count', -1) do
      delete :destroy, id: @newsf
    end

    assert_redirected_to newsfs_path
  end
end
