Rails.application.routes.draw do

  root "splash#index"

  resources :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :update, :destroy]

  resources :books do
    post :toggle_availability, on: :collection
  end

  resources :trade_wall, only: :index
  resources :bookshelf, only: :index
  resource :trades

  get "/logout", to: "users#logout"

end
