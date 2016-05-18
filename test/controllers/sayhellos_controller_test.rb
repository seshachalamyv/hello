require 'test_helper'

class SayhellosControllerTest < ActionController::TestCase
  setup do
    @sayhello = sayhellos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sayhellos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sayhello" do
    assert_difference('Sayhello.count') do
      post :create, sayhello: { body: @sayhello.body }
    end

    assert_redirected_to sayhello_path(assigns(:sayhello))
  end

  test "should show sayhello" do
    get :show, id: @sayhello
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sayhello
    assert_response :success
  end

  test "should update sayhello" do
    patch :update, id: @sayhello, sayhello: { body: @sayhello.body }
    assert_redirected_to sayhello_path(assigns(:sayhello))
  end

  test "should destroy sayhello" do
    assert_difference('Sayhello.count', -1) do
      delete :destroy, id: @sayhello
    end

    assert_redirected_to sayhellos_path
  end
end
