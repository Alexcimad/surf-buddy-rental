Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers, only: [:index, :new, :create, :show, :update, :edit, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
