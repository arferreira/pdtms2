require 'test_helper'

class PrevidenciasocialsControllerTest < ActionController::TestCase
  setup do
    @previdenciasocial = previdenciasocials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:previdenciasocials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create previdenciasocial" do
    assert_difference('Previdenciasocial.count') do
      post :create, previdenciasocial: { content: @previdenciasocial.content }
    end

    assert_redirected_to previdenciasocial_path(assigns(:previdenciasocial))
  end

  test "should show previdenciasocial" do
    get :show, id: @previdenciasocial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @previdenciasocial
    assert_response :success
  end

  test "should update previdenciasocial" do
    put :update, id: @previdenciasocial, previdenciasocial: { content: @previdenciasocial.content }
    assert_redirected_to previdenciasocial_path(assigns(:previdenciasocial))
  end

  test "should destroy previdenciasocial" do
    assert_difference('Previdenciasocial.count', -1) do
      delete :destroy, id: @previdenciasocial
    end

    assert_redirected_to previdenciasocials_path
  end
end
