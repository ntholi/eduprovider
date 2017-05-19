require 'test_helper'

class VideoLessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_lesson = video_lessons(:one)
  end

  test "should get index" do
    get video_lessons_url
    assert_response :success
  end

  test "should get new" do
    get new_video_lesson_url
    assert_response :success
  end

  test "should create video_lesson" do
    assert_difference('VideoLesson.count') do
      post video_lessons_url, params: { video_lesson: { lesson_id: @video_lesson.lesson_id, video: @video_lesson.video } }
    end

    assert_redirected_to video_lesson_url(VideoLesson.last)
  end

  test "should show video_lesson" do
    get video_lesson_url(@video_lesson)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_lesson_url(@video_lesson)
    assert_response :success
  end

  test "should update video_lesson" do
    patch video_lesson_url(@video_lesson), params: { video_lesson: { lesson_id: @video_lesson.lesson_id, video: @video_lesson.video } }
    assert_redirected_to video_lesson_url(@video_lesson)
  end

  test "should destroy video_lesson" do
    assert_difference('VideoLesson.count', -1) do
      delete video_lesson_url(@video_lesson)
    end

    assert_redirected_to video_lessons_url
  end
end
