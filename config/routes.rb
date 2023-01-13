Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    resources :user_abouts
    resources :matches do
      resources :comments
    end
    get 'team/show'
    resources :team
    get 'user/profile'
    get 'match/show_stat'
    root 'matches#index'
    get 'match/filters'
    devise_for :users
    get 'user/edit_info'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
