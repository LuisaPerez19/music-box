Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources :instruments

  resources :instruments do

    resources :bookings, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create]
  end

  resources :bookings, only: [:index,:show ]
  resources :reviews, only: [ :show]
end




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
