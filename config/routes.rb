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
  resources :users


end
