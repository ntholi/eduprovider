json.extract! video_lesson, :id, :lesson_id, :video, :created_at, :updated_at
json.url video_lesson_url(video_lesson, format: :json)
