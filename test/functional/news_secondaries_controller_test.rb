require 'test_helper'

class NewsSecondariesControllerTest < ActionController::TestCase
  setup do
    @news_secondary = news_secondaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_secondaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_secondary" do
    assert_difference('NewsSecondary.count') do
      post :create, news_secondary: { author: @news_secondary.author, content: @news_secondary.content, date: @news_secondary.date, description: @news_secondary.description, title: @news_secondary.title }
    end

    assert_redirected_to news_secondary_path(assigns(:news_secondary))
  end

  test "should show news_secondary" do
    get :show, id: @news_secondary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_secondary
    assert_response :success
  end

  test "should update news_secondary" do
    put :update, id: @news_secondary, news_secondary: { author: @news_secondary.author, content: @news_secondary.content, date: @news_secondary.date, description: @news_secondary.description, title: @news_secondary.title }
    assert_redirected_to news_secondary_path(assigns(:news_secondary))
  end

  test "should destroy news_secondary" do
    assert_difference('NewsSecondary.count', -1) do
      delete :destroy, id: @news_secondary
    end

    assert_redirected_to news_secondaries_path
  end
end
