require 'test_helper'

class TutoredCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutored_course = tutored_courses(:one)
  end

  test "should get index" do
    get tutored_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_tutored_course_url
    assert_response :success
  end

  test "should create tutored_course" do
    assert_difference('TutoredCourse.count') do
      post tutored_courses_url, params: { tutored_course: { course_id: @tutored_course.course_id, tutor_id: @tutored_course.tutor_id } }
    end

    assert_redirected_to tutored_course_url(TutoredCourse.last)
  end

  test "should show tutored_course" do
    get tutored_course_url(@tutored_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutored_course_url(@tutored_course)
    assert_response :success
  end

  test "should update tutored_course" do
    patch tutored_course_url(@tutored_course), params: { tutored_course: { course_id: @tutored_course.course_id, tutor_id: @tutored_course.tutor_id } }
    assert_redirected_to tutored_course_url(@tutored_course)
  end

  test "should destroy tutored_course" do
    assert_difference('TutoredCourse.count', -1) do
      delete tutored_course_url(@tutored_course)
    end

    assert_redirected_to tutored_courses_url
  end
end
