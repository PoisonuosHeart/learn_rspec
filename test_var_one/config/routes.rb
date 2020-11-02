Rails.application.routes.draw do
  post 'pages/index', to: 'pages#index', as: 'home' 
  root 'pages#index'
end
