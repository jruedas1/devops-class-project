Rails.application.routes.draw do
  get 'recruiter/new'
  get 'recruiter/edit'
  get 'recruiters' => 'recruiter#index'
  devise_for :users
  root 'welcome#index'
  get 'welcome/index'
  post 'recruiters' => 'recruiter#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
