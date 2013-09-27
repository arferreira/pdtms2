require 'test_helper'

class DiretorioestadualsControllerTest < ActionController::TestCase
  setup do
    @diretorioestadual = diretorioestaduals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diretorioestaduals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diretorioestadual" do
    assert_difference('Diretorioestadual.count') do
      post :create, diretorioestadual: { content: @diretorioestadual.content }
    end

    assert_redirected_to diretorioestadual_path(assigns(:diretorioestadual))
  end

  test "should show diretorioestadual" do
    get :show, id: @diretorioestadual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diretorioestadual
    assert_response :success
  end

  test "should update diretorioestadual" do
    put :update, id: @diretorioestadual, diretorioestadual: { content: @diretorioestadual.content }
    assert_redirected_to diretorioestadual_path(assigns(:diretorioestadual))
  end

  test "should destroy diretorioestadual" do
    assert_difference('Diretorioestadual.count', -1) do
      delete :destroy, id: @diretorioestadual
    end

    assert_redirected_to diretorioestaduals_path
  end
end
