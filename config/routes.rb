Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users

  resources :cars do
    resources :reviews
    resources :bookings
  end
end
