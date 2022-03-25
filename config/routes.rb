Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars, only: [:new, :create, :index, :show] do
    resources :reservations, only: [:new, :create]
  end

  get "/my_reservations", to: "reservations#my_reservations"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
