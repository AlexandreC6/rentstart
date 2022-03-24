Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars, only: [:new, :create, :index, :show] do
    resources :reservations, only: [ :new, :create ]
  end
  get "/my_reservations", to: "reservations#my_reservations"
end
