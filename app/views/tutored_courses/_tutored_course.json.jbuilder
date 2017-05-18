json.extract! tutored_course, :id, :tutor_id, :course_id, :created_at, :updated_at
json.url tutored_course_url(tutored_course, format: :json)
