Rails.application.routes.draw do

  resources :recruiters, :students
  
  devise_for :users

  root 'welcome#index'
  get 'welcome/index'
end
