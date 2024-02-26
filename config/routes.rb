Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users

  resources :cars do
    resources :reviews [:index, :new, :create]
    resources :bookings [:index, :new, :create]
  end
end
