Rails.application.routes.draw do
  resources :matches
  devise_for :users
  get 'match/show_stat'
  root 'match#show_all'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
