require 'test_helper'

class AudioLessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audio_lesson = audio_lessons(:one)
  end

  test "should get index" do
    get audio_lessons_url
    assert_response :success
  end

  test "should get new" do
    get new_audio_lesson_url
    assert_response :success
  end

  test "should create audio_lesson" do
    assert_difference('AudioLesson.count') do
      post audio_lessons_url, params: { audio_lesson: { audio: @audio_lesson.audio, lesson_id: @audio_lesson.lesson_id } }
    end

    assert_redirected_to audio_lesson_url(AudioLesson.last)
  end

  test "should show audio_lesson" do
    get audio_lesson_url(@audio_lesson)
    assert_response :success
  end

  test "should get edit" do
    get edit_audio_lesson_url(@audio_lesson)
    assert_response :success
  end

  test "should update audio_lesson" do
    patch audio_lesson_url(@audio_lesson), params: { audio_lesson: { audio: @audio_lesson.audio, lesson_id: @audio_lesson.lesson_id } }
    assert_redirected_to audio_lesson_url(@audio_lesson)
  end

  test "should destroy audio_lesson" do
    assert_difference('AudioLesson.count', -1) do
      delete audio_lesson_url(@audio_lesson)
    end

    assert_redirected_to audio_lessons_url
  end
end
