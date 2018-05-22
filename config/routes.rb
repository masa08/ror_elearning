Rails.application.routes.draw do
  namespace :admins do
    get 'category'
    get 'word'
    get 'user'
    resources :categories, except: [:index]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
