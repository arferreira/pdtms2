require 'test_helper'

class LideresControllerTest < ActionController::TestCase
  setup do
    @lidere = lideres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lideres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lidere" do
    assert_difference('Lidere.count') do
      post :create, lidere: { content: @lidere.content, name: @lidere.name }
    end

    assert_redirected_to lidere_path(assigns(:lidere))
  end

  test "should show lidere" do
    get :show, id: @lidere
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lidere
    assert_response :success
  end

  test "should update lidere" do
    put :update, id: @lidere, lidere: { content: @lidere.content, name: @lidere.name }
    assert_redirected_to lidere_path(assigns(:lidere))
  end

  test "should destroy lidere" do
    assert_difference('Lidere.count', -1) do
      delete :destroy, id: @lidere
    end

    assert_redirected_to lideres_path
  end
end
