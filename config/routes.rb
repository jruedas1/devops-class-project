Rails.application.routes.draw do
  get 'student/new'
  get 'student/edit'
  devise_for :users
  post 'students' => 'student#create_student'
  get 'index' => 'student#index'
end
