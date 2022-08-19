Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'
end

Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'
end

Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/link'
end