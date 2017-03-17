Rails.application.routes.draw do

  get 'pages/home'
  root to: 'pages#home'
  get "about" => "pages#about"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:show]
resources :user_signed_in
resources :profiles, only: [:new, :edit, :create, :update]
resources :events do resources :bookings, only: [:create] end
resources :categories
resources :photos

end
