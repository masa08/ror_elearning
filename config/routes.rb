Rails.application.routes.draw do
  # About top
  root 'top#index'

  # About admins
  namespace :admin do
    resources :categories
    resources :words, only: [:index]
    resources :word_answers, only: [:index]
  end

  # About users
  resources :users, except: [:new]

  # SignUp
  get    '/signup',  to: 'users#new'

  # SignIn
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
