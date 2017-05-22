json.extract! user_profile, :id, :email, :first_name, :last_name, :date_of_birth, :area_name, :city, :country, :phone_number, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
