require 'test_helper'

class TrabalhismosControllerTest < ActionController::TestCase
  setup do
    @trabalhismo = trabalhismos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trabalhismos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trabalhismo" do
    assert_difference('Trabalhismo.count') do
      post :create, trabalhismo: { content: @trabalhismo.content }
    end

    assert_redirected_to trabalhismo_path(assigns(:trabalhismo))
  end

  test "should show trabalhismo" do
    get :show, id: @trabalhismo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trabalhismo
    assert_response :success
  end

  test "should update trabalhismo" do
    put :update, id: @trabalhismo, trabalhismo: { content: @trabalhismo.content }
    assert_redirected_to trabalhismo_path(assigns(:trabalhismo))
  end

  test "should destroy trabalhismo" do
    assert_difference('Trabalhismo.count', -1) do
      delete :destroy, id: @trabalhismo
    end

    assert_redirected_to trabalhismos_path
  end
end
