Rails.application.routes.draw do
  # About top
  root 'top#index'

  # About admins
  namespace :admin do
      resources :categories
      resources :words, only: [:index]
      resources :word_answers, only: [:index]
  end

  # About categories
  resources :categories, only: [:index, :show]

  # About users
  resources :users, except: [:new] do
    member do
      get :following, :followers
    end
  end
  # About Relationship
  resources :relationships, only: [:create, :destroy]

  # About lessons
  resources :lessons, only: [:index, :show, :create] do
      resources :lesson_words, only: [:show, :create]
  end

  # About words
  resources :words, only: [:index]

  # SignUp
  get    '/signup',  to: 'users#new'

  # SignIn
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
