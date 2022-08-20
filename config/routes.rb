Rails.application.routes.draw do
  get 'users/new'
  get 'pages/index'
  root 'pages#index'
end

Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'
  
  resources :users
end

Rails.application.routes.draw do
  get 'users/new'
  root 'pages#index'
  get 'pages/link'
end