Rails.application.routes.draw do
  namespace :admins do
    resources :categories, except: [:index]
    get 'category', as: "category_list"
    get 'word'
    get 'word_answer'
    get 'user'
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
