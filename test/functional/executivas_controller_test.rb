require 'test_helper'

class ExecutivasControllerTest < ActionController::TestCase
  setup do
    @executiva = executivas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:executivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create executiva" do
    assert_difference('Executiva.count') do
      post :create, executiva: { content: @executiva.content }
    end

    assert_redirected_to executiva_path(assigns(:executiva))
  end

  test "should show executiva" do
    get :show, id: @executiva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @executiva
    assert_response :success
  end

  test "should update executiva" do
    put :update, id: @executiva, executiva: { content: @executiva.content }
    assert_redirected_to executiva_path(assigns(:executiva))
  end

  test "should destroy executiva" do
    assert_difference('Executiva.count', -1) do
      delete :destroy, id: @executiva
    end

    assert_redirected_to executivas_path
  end
end
