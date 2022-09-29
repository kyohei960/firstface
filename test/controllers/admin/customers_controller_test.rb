require "test_helper"

class Admin::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get admin/orders" do
    get admin_customers_admin/orders_url
    assert_response :success
  end

  test "should get admin/order_details" do
    get admin_customers_admin/order_details_url
    assert_response :success
  end

  test "should get admin/genres" do
    get admin_customers_admin/genres_url
    assert_response :success
  end

  test "should get admin/items" do
    get admin_customers_admin/items_url
    assert_response :success
  end

  test "should get admin/homes" do
    get admin_customers_admin/homes_url
    assert_response :success
  end

  test "should get admin/sessions" do
    get admin_customers_admin/sessions_url
    assert_response :success
  end
end
