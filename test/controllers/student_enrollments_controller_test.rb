require 'test_helper'

class StudentEnrollmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_enrollment = student_enrollments(:one)
  end

  test "should get index" do
    get student_enrollments_url
    assert_response :success
  end

  test "should get new" do
    get new_student_enrollment_url
    assert_response :success
  end

  test "should create student_enrollment" do
    assert_difference('StudentEnrollment.count') do
      post student_enrollments_url, params: { student_enrollment: { student_id: @student_enrollment.student_id, tutored_course_id: @student_enrollment.tutored_course_id } }
    end

    assert_redirected_to student_enrollment_url(StudentEnrollment.last)
  end

  test "should show student_enrollment" do
    get student_enrollment_url(@student_enrollment)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_enrollment_url(@student_enrollment)
    assert_response :success
  end

  test "should update student_enrollment" do
    patch student_enrollment_url(@student_enrollment), params: { student_enrollment: { student_id: @student_enrollment.student_id, tutored_course_id: @student_enrollment.tutored_course_id } }
    assert_redirected_to student_enrollment_url(@student_enrollment)
  end

  test "should destroy student_enrollment" do
    assert_difference('StudentEnrollment.count', -1) do
      delete student_enrollment_url(@student_enrollment)
    end

    assert_redirected_to student_enrollments_url
  end
end
