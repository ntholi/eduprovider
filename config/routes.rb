Rails.application.routes.draw do
  devise_for :tutors
  resources :user_profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
