require 'test_helper'

class NewsFeaturedsControllerTest < ActionController::TestCase
  setup do
    @news_featured = news_featureds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_featureds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_featured" do
    assert_difference('NewsFeatured.count') do
      post :create, news_featured: { author: @news_featured.author, content: @news_featured.content, date: @news_featured.date, description: @news_featured.description, title: @news_featured.title }
    end

    assert_redirected_to news_featured_path(assigns(:news_featured))
  end

  test "should show news_featured" do
    get :show, id: @news_featured
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_featured
    assert_response :success
  end

  test "should update news_featured" do
    put :update, id: @news_featured, news_featured: { author: @news_featured.author, content: @news_featured.content, date: @news_featured.date, description: @news_featured.description, title: @news_featured.title }
    assert_redirected_to news_featured_path(assigns(:news_featured))
  end

  test "should destroy news_featured" do
    assert_difference('NewsFeatured.count', -1) do
      delete :destroy, id: @news_featured
    end

    assert_redirected_to news_featureds_path
  end
end
