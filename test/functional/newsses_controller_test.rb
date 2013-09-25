require 'test_helper'

class NewssesControllerTest < ActionController::TestCase
  setup do
    @newss = newsses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newss" do
    assert_difference('Newss.count') do
      post :create, newss: { author: @newss.author, content: @newss.content, date: @newss.date, description: @newss.description, title: @newss.title }
    end

    assert_redirected_to newss_path(assigns(:newss))
  end

  test "should show newss" do
    get :show, id: @newss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newss
    assert_response :success
  end

  test "should update newss" do
    put :update, id: @newss, newss: { author: @newss.author, content: @newss.content, date: @newss.date, description: @newss.description, title: @newss.title }
    assert_redirected_to newss_path(assigns(:newss))
  end

  test "should destroy newss" do
    assert_difference('Newss.count', -1) do
      delete :destroy, id: @newss
    end

    assert_redirected_to newsses_path
  end
end
