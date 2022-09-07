require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Adhar no", with: @student.adhar_no
    fill_in "Department", with: @student.department
    fill_in "Email", with: @student.email
    fill_in "License", with: @student.license
    fill_in "Name", with: @student.name
    fill_in "Phone", with: @student.phone
    fill_in "Roll no", with: @student.roll_no
    fill_in "Vehicle no", with: @student.vehicle_no
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Adhar no", with: @student.adhar_no
    fill_in "Department", with: @student.department
    fill_in "Email", with: @student.email
    fill_in "License", with: @student.license
    fill_in "Name", with: @student.name
    fill_in "Phone", with: @student.phone
    fill_in "Roll no", with: @student.roll_no
    fill_in "Vehicle no", with: @student.vehicle_no
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
