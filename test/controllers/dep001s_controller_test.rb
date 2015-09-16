require 'test_helper'

class Dep001sControllerTest < ActionController::TestCase
  setup do
    @dep001 = dep001s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dep001s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dep001" do
    assert_difference('Dep001.count') do
      post :create, dep001: { description: @dep001.description, name: @dep001.name, picurl: @dep001.picurl, product_key: @dep001.product_key, retail_value: @dep001.retail_value, whole_sale: @dep001.whole_sale }
    end

    assert_redirected_to dep001_path(assigns(:dep001))
  end

  test "should show dep001" do
    get :show, id: @dep001
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dep001
    assert_response :success
  end

  test "should update dep001" do
    patch :update, id: @dep001, dep001: { description: @dep001.description, name: @dep001.name, picurl: @dep001.picurl, product_key: @dep001.product_key, retail_value: @dep001.retail_value, whole_sale: @dep001.whole_sale }
    assert_redirected_to dep001_path(assigns(:dep001))
  end

  test "should destroy dep001" do
    assert_difference('Dep001.count', -1) do
      delete :destroy, id: @dep001
    end

    assert_redirected_to dep001s_path
  end
end
