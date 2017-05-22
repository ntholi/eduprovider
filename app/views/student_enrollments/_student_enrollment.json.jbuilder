json.extract! student_enrollment, :id, :student_id, :tutored_course_id, :created_at, :updated_at
json.url student_enrollment_url(student_enrollment, format: :json)
