Rails.application.routes.draw do
  resources :user_abouts
  resources :matches do
    resources :comments
  end
  get 'team/show'
  resources :team
  # get 'registrations/new'
  # get 'registrations/create'
  # get 'registrations/update'
  get 'user/profile'
  get 'match/show_stat'
  root 'matches#index'
  get 'match/filters'
  devise_for :users
  get 'user/edit_info'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
