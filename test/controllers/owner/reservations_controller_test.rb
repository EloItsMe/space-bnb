require "test_helper"

class Owner::ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_reservations_index_url
    assert_response :success
  end
end
