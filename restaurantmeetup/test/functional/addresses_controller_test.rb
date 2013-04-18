require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { location: @address.location }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    put :update, id: @address, address: { location: @address.location }
    assert_redirected_to address_path(assigns(:address))
  end

  # test "should destroy address" do
  #   assert_difference('Address.count', -1) do
  #     delete :destroy, id: @address
  # end

  test "should belong to user" do 
    assert_response :user
  end

  test "give me a list of addresses" do 
    assert_equal 1, @users.length
    assert @addresses.first.is_a?(Address)
    assert_equal "68 Hastings Drive", @addresses.first.location

  #   assert_redirected_to addresses_path
  # end
end
