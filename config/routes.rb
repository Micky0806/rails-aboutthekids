Rails.application.routes.draw do
  root "pages#home"

  devise_for :users

  # as visitor
  resources :activities, only: [:index, :show] do
    resources :bookings, only: [:new, :create] # logged in
  end

  # profile
  resource :profile, only: [:show, :edit, :update]

  # as procreator
  namespace :procreator do
    resources :children, only: [:index, :new, :create, :destroy]
  ​
    resources :bookings, only: [:index, :show] do
      member do
        patch :cancel
      end
    end
  end

  # as owner
  namespace :owner do
    resources :activities
    resources :bookings, only: [:index, :show]
  end
end
