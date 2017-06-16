json.extract! question, :id, :title, :content, :student_id, :lesson_id, :created_at, :updated_at
json.url question_url(question, format: :json)
