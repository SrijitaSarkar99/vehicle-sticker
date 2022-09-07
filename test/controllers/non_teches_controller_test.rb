require "test_helper"

class NonTechesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @non_tech = non_teches(:one)
  end

  test "should get index" do
    get non_teches_url
    assert_response :success
  end

  test "should get new" do
    get new_non_tech_url
    assert_response :success
  end

  test "should create non_tech" do
    assert_difference("NonTech.count") do
      post non_teches_url, params: { non_tech: { adhar_no: @non_tech.adhar_no, email: @non_tech.email, employee_no: @non_tech.employee_no, license: @non_tech.license, name: @non_tech.name, office: @non_tech.office, phone: @non_tech.phone, vehicle_no: @non_tech.vehicle_no } }
    end

    assert_redirected_to non_tech_url(NonTech.last)
  end

  test "should show non_tech" do
    get non_tech_url(@non_tech)
    assert_response :success
  end

  test "should get edit" do
    get edit_non_tech_url(@non_tech)
    assert_response :success
  end

  test "should update non_tech" do
    patch non_tech_url(@non_tech), params: { non_tech: { adhar_no: @non_tech.adhar_no, email: @non_tech.email, employee_no: @non_tech.employee_no, license: @non_tech.license, name: @non_tech.name, office: @non_tech.office, phone: @non_tech.phone, vehicle_no: @non_tech.vehicle_no } }
    assert_redirected_to non_tech_url(@non_tech)
  end

  test "should destroy non_tech" do
    assert_difference("NonTech.count", -1) do
      delete non_tech_url(@non_tech)
    end

    assert_redirected_to non_teches_url
  end
end
