Rails.application.routes.draw do
  resources :matches
  devise_for :users
  root 'match#show_all'
  get 'match/show_stat', as: 'show_stat'
  get "match/:key_id", to: "match#show_stat"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
