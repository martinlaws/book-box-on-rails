Rails.application.routes.draw do
  root "splash#index"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :update, :destroy]
end
