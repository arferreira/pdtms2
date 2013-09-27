require 'test_helper'

class DiretoriomunicipalsControllerTest < ActionController::TestCase
  setup do
    @diretoriomunicipal = diretoriomunicipals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diretoriomunicipals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diretoriomunicipal" do
    assert_difference('Diretoriomunicipal.count') do
      post :create, diretoriomunicipal: { content: @diretoriomunicipal.content }
    end

    assert_redirected_to diretoriomunicipal_path(assigns(:diretoriomunicipal))
  end

  test "should show diretoriomunicipal" do
    get :show, id: @diretoriomunicipal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diretoriomunicipal
    assert_response :success
  end

  test "should update diretoriomunicipal" do
    put :update, id: @diretoriomunicipal, diretoriomunicipal: { content: @diretoriomunicipal.content }
    assert_redirected_to diretoriomunicipal_path(assigns(:diretoriomunicipal))
  end

  test "should destroy diretoriomunicipal" do
    assert_difference('Diretoriomunicipal.count', -1) do
      delete :destroy, id: @diretoriomunicipal
    end

    assert_redirected_to diretoriomunicipals_path
  end
end
