json.extract! course, :id, :code, :name, :description, :level, :price, :created_at, :updated_at
json.url course_url(course, format: :json)
