json.extract! audio_lesson, :id, :lesson_id, :audio, :created_at, :updated_at
json.url audio_lesson_url(audio_lesson, format: :json)
