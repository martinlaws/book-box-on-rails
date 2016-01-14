Rails.application.routes.draw do

  root "splash#index"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :update, :destroy]
  resources :books
  resources :trades
  resources :bookshelf, only: :index
  resources :trade_wall, only: :index

end
