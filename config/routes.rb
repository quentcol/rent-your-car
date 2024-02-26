Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users

  resources :cars do
    resources :reviews, only: [:index, :new, :create]
    resources :bookings, only: [:index, :new, :create]
  end
end
