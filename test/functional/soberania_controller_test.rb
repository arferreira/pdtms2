require 'test_helper'

class SoberaniaControllerTest < ActionController::TestCase
  setup do
    @soberanium = soberania(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soberania)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soberanium" do
    assert_difference('Soberanium.count') do
      post :create, soberanium: { content: @soberanium.content }
    end

    assert_redirected_to soberanium_path(assigns(:soberanium))
  end

  test "should show soberanium" do
    get :show, id: @soberanium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soberanium
    assert_response :success
  end

  test "should update soberanium" do
    put :update, id: @soberanium, soberanium: { content: @soberanium.content }
    assert_redirected_to soberanium_path(assigns(:soberanium))
  end

  test "should destroy soberanium" do
    assert_difference('Soberanium.count', -1) do
      delete :destroy, id: @soberanium
    end

    assert_redirected_to soberania_path
  end
end
