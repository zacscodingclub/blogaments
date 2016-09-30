Rails.application.routes.draw do
  root 'pages#home'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :comments
  resources :users, except: [:new]
  resources :articles
  resources :categories, except: [:edit, :update, :destroy]
end
