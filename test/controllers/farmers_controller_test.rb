require 'test_helper'

class FarmersControllerTest < ActionController::TestCase
  setup do
    @farmer = farmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmer" do
    assert_difference('Farmer.count') do
      post :create, farmer: { Plantationid: @farmer.Plantationid, adress: @farmer.adress, email: @farmer.email, name: @farmer.name, phone: @farmer.phone, surname: @farmer.surname }
    end

    assert_redirected_to farmer_path(assigns(:farmer))
  end

  test "should show farmer" do
    get :show, id: @farmer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farmer
    assert_response :success
  end

  test "should update farmer" do
    patch :update, id: @farmer, farmer: { Plantationid: @farmer.Plantationid, adress: @farmer.adress, email: @farmer.email, name: @farmer.name, phone: @farmer.phone, surname: @farmer.surname }
    assert_redirected_to farmer_path(assigns(:farmer))
  end

  test "should destroy farmer" do
    assert_difference('Farmer.count', -1) do
      delete :destroy, id: @farmer
    end

    assert_redirected_to farmers_path
  end
end
