Rails.application.routes.draw do

  root "splash#index"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :update, :destroy]

  resources :books do
    post :toggle_availability, on: :collection
  end

  resources :trade_wall, only: :index
  resources :bookshelf, only: :index
  resource :trades do
    post :decline_trade, on: :collection
    post :accept_trade, on: :collection
  end

  get "/logout", to: "sessions#destroy"

end
