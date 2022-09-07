require "application_system_test_case"

class NonTechesTest < ApplicationSystemTestCase
  setup do
    @non_tech = non_teches(:one)
  end

  test "visiting the index" do
    visit non_teches_url
    assert_selector "h1", text: "Non teches"
  end

  test "should create non tech" do
    visit non_teches_url
    click_on "New non tech"

    fill_in "Adhar no", with: @non_tech.adhar_no
    fill_in "Email", with: @non_tech.email
    fill_in "Employee no", with: @non_tech.employee_no
    fill_in "License", with: @non_tech.license
    fill_in "Name", with: @non_tech.name
    fill_in "Office", with: @non_tech.office
    fill_in "Phone", with: @non_tech.phone
    fill_in "Vehicle no", with: @non_tech.vehicle_no
    click_on "Create Non tech"

    assert_text "Non tech was successfully created"
    click_on "Back"
  end

  test "should update Non tech" do
    visit non_tech_url(@non_tech)
    click_on "Edit this non tech", match: :first

    fill_in "Adhar no", with: @non_tech.adhar_no
    fill_in "Email", with: @non_tech.email
    fill_in "Employee no", with: @non_tech.employee_no
    fill_in "License", with: @non_tech.license
    fill_in "Name", with: @non_tech.name
    fill_in "Office", with: @non_tech.office
    fill_in "Phone", with: @non_tech.phone
    fill_in "Vehicle no", with: @non_tech.vehicle_no
    click_on "Update Non tech"

    assert_text "Non tech was successfully updated"
    click_on "Back"
  end

  test "should destroy Non tech" do
    visit non_tech_url(@non_tech)
    click_on "Destroy this non tech", match: :first

    assert_text "Non tech was successfully destroyed"
  end
end
