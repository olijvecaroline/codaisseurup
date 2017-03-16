Rails.application.routes.draw do
  resources :categories
  get 'pages/home'
  root to: 'pages#home'
  get "about" => "pages#about"





  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:show]
resources :user_signed_in
resources :events
resources :photos
end
