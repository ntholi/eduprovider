Rails.application.routes.draw do

  resources :courses
  resources :tutored_courses
  devise_for :students
  devise_for :tutors
  resources :user_profiles

  get 'home/student_home'
  get 'home/tutor_home'
  get '/tutor', to: 'home#tutor_home', as: :tutor_root
  get 'home/index'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
