Rails.application.routes.draw do
  resources :comments
  get 'team/show'
  
  get 'registrations/new'
  get 'registrations/create'
  get 'registrations/update'
  get 'user/profile'
  resources :matches do
    resources :teams
  end
  get 'match/show_stat'
  root 'match#show_all'
  get 'match/filters'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
