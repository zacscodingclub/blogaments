Rails.application.routes.draw do
  resources :comments
  resources :users
  root 'pages#home'
  resources :articles
end
