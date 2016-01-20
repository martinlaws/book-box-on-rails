Rails.application.routes.draw do

  root "splash#index"

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :trade_wall, only: :index
  resources :bookshelf, only: :index
  resources :books do
    member do
    post :toggle_availability
    end
  end
  resources :trades, only: [:create, :destroy] do
    member do
      post :decline_trade
      post :accept_trade
    end
  end

end
