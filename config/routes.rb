Rails.application.routes.draw do

  resources :answers
  resources :questions
  resources :audio_lessons
  resources :student_enrollments
  resources :video_lessons
  resources :lessons
  resources :courses
  resources :tutored_courses
  devise_for :students
  devise_for :tutors
  resources :students
  resources :user_profiles

  get 'home/student_home', as: :student_root
  get 'home/tutor_home'
  get '/tutor', to: 'home#tutor_home', as: :tutor_root
  get 'home/index'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
