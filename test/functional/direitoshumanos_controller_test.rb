require 'test_helper'

class DireitoshumanosControllerTest < ActionController::TestCase
  setup do
    @direitoshumano = direitoshumanos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direitoshumanos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direitoshumano" do
    assert_difference('Direitoshumano.count') do
      post :create, direitoshumano: { content: @direitoshumano.content }
    end

    assert_redirected_to direitoshumano_path(assigns(:direitoshumano))
  end

  test "should show direitoshumano" do
    get :show, id: @direitoshumano
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direitoshumano
    assert_response :success
  end

  test "should update direitoshumano" do
    put :update, id: @direitoshumano, direitoshumano: { content: @direitoshumano.content }
    assert_redirected_to direitoshumano_path(assigns(:direitoshumano))
  end

  test "should destroy direitoshumano" do
    assert_difference('Direitoshumano.count', -1) do
      delete :destroy, id: @direitoshumano
    end

    assert_redirected_to direitoshumanos_path
  end
end
