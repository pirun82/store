require 'test_helper'

class Dep002sControllerTest < ActionController::TestCase
  setup do
    @dep002 = dep002s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dep002s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dep002" do
    assert_difference('Dep002.count') do
      post :create, dep002: { description: @dep002.description, name: @dep002.name, picurl: @dep002.picurl, product_key: @dep002.product_key, retail_value: @dep002.retail_value, whole_sale: @dep002.whole_sale }
    end

    assert_redirected_to dep002_path(assigns(:dep002))
  end

  test "should show dep002" do
    get :show, id: @dep002
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dep002
    assert_response :success
  end

  test "should update dep002" do
    patch :update, id: @dep002, dep002: { description: @dep002.description, name: @dep002.name, picurl: @dep002.picurl, product_key: @dep002.product_key, retail_value: @dep002.retail_value, whole_sale: @dep002.whole_sale }
    assert_redirected_to dep002_path(assigns(:dep002))
  end

  test "should destroy dep002" do
    assert_difference('Dep002.count', -1) do
      delete :destroy, id: @dep002
    end

    assert_redirected_to dep002s_path
  end
end
