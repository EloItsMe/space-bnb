require "test_helper"

class Owner::PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_planets_index_url
    assert_response :success
  end

  test "should get new" do
    get owner_planets_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_planets_create_url
    assert_response :success
  end
end
