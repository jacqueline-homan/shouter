Shouter::Application.routes.draw do
  root to: 'home#show', via: :get
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  
  
end
