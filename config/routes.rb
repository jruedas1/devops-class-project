Rails.application.routes.draw do

  get 'recruiters/index'
  get 'recruiters/edit'
  get 'recruiters/show'
  get 'recruiters/new'
  get 'new_student' => 'student#new'
  get 'student/edit'
  post 'students' => 'student#create_student'
  get 'index' => 'student#index'
  

  resources :recruiters
  
  devise_for :users

  root 'welcome#index'
  get 'welcome/index'
end
