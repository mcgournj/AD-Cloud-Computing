require 'test_helper'

class JoeMcGouransControllerTest < ActionController::TestCase
  setup do
    @joe_mc_gouran = joe_mc_gourans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joe_mc_gourans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joe_mc_gouran" do
    assert_difference('JoeMcGouran.count') do
      post :create, :joe_mc_gouran => @joe_mc_gouran.attributes
    end

    assert_redirected_to joe_mc_gouran_path(assigns(:joe_mc_gouran))
  end

  test "should show joe_mc_gouran" do
    get :show, :id => @joe_mc_gouran.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @joe_mc_gouran.to_param
    assert_response :success
  end

  test "should update joe_mc_gouran" do
    put :update, :id => @joe_mc_gouran.to_param, :joe_mc_gouran => @joe_mc_gouran.attributes
    assert_redirected_to joe_mc_gouran_path(assigns(:joe_mc_gouran))
  end

  test "should destroy joe_mc_gouran" do
    assert_difference('JoeMcGouran.count', -1) do
      delete :destroy, :id => @joe_mc_gouran.to_param
    end

    assert_redirected_to joe_mc_gourans_path
  end
end
