require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get sherif" do
    get :sherif
    assert_response :success
  end

  test "should get kady" do
    get :kady
    assert_response :success
  end

  test "should get abdelrahman" do
    get :abdelrahman
    assert_response :success
  end

  test "should get yassin" do
    get :yassin
    assert_response :success
  end

  test "should get hussein" do
    get :hussein
    assert_response :success
  end

  test "should get mohamed" do
    get :mohamed
    assert_response :success
  end

  test "should get aly" do
    get :aly
    assert_response :success
  end

end
