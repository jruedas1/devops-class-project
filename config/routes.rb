Rails.application.routes.draw do

  get 'new_student' => 'student#new'
  get 'student/edit'
  post 'students' => 'student#create_student'
  get 'index' => 'student#index'
  

  get 'recruiters' => 'recruiter#index'
  post 'recruiters' => 'recruiter#create'
  get 'new_recruiter' => 'recruiter#new'
  get 'recruiter/edit'
  
  get 'show_recruiter' => 'recruiter#show'
  
  devise_for :users

  root 'welcome#index'
  get 'welcome/index'
end
