require "test_helper"

class TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

  test "should create teacher" do
    assert_difference("Teacher.count") do
      post teachers_url, params: { teacher: { adhar_no: @teacher.adhar_no, department: @teacher.department, email: @teacher.email, faculty_no: @teacher.faculty_no, license: @teacher.license, name: @teacher.name, phone: @teacher.phone, vehicle_no: @teacher.vehicle_no } }
    end

    assert_redirected_to teacher_url(Teacher.last)
  end

  test "should show teacher" do
    get teacher_url(@teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_url(@teacher)
    assert_response :success
  end

  test "should update teacher" do
    patch teacher_url(@teacher), params: { teacher: { adhar_no: @teacher.adhar_no, department: @teacher.department, email: @teacher.email, faculty_no: @teacher.faculty_no, license: @teacher.license, name: @teacher.name, phone: @teacher.phone, vehicle_no: @teacher.vehicle_no } }
    assert_redirected_to teacher_url(@teacher)
  end

  test "should destroy teacher" do
    assert_difference("Teacher.count", -1) do
      delete teacher_url(@teacher)
    end

    assert_redirected_to teachers_url
  end
end
