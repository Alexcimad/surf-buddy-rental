Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :reviews, only: [:index, :new, :create]
    resources :bookings, only: [:new, :create]
  end

  namespace :my do
    resources :bookings, only: [:index, :show] 
    resources :offers, only: [:index, :show, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
