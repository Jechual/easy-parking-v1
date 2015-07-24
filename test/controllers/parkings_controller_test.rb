require 'test_helper'

class ParkingsControllerTest < ActionController::TestCase
  setup do
    @parking = parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking" do
    assert_difference('Parking.count') do
      post :create, parking: { active: @parking.active, address: @parking.address, availability: @parking.availability, comments: @parking.comments, contact: @parking.contact, image: @parking.image, name: @parking.name, price: @parking.price, schedule: @parking.schedule, telephone: @parking.telephone }
    end

    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should show parking" do
    get :show, id: @parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking
    assert_response :success
  end

  test "should update parking" do
    patch :update, id: @parking, parking: { active: @parking.active, address: @parking.address, availability: @parking.availability, comments: @parking.comments, contact: @parking.contact, image: @parking.image, name: @parking.name, price: @parking.price, schedule: @parking.schedule, telephone: @parking.telephone }
    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should destroy parking" do
    assert_difference('Parking.count', -1) do
      delete :destroy, id: @parking
    end

    assert_redirected_to parkings_path
  end
end
