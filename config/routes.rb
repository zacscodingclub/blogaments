Rails.application.routes.draw do
  root 'pages#home'
  get 'signup', to: 'users#new'

  resources :comments
  resources :users, except: [:new]
  resources :articles
end
