Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                                    registrations: 'registrations' }

get "physical", to: "pages#physical"
get "academic", to: "pages#academic"
get "artistic", to: "pages#artistic"
  root "pages#home"
  # as visitor
  resources :activities, only: [:index, :show] do
    resources :bookings, only: [:new, :create] # logged in
  end
  # profile
  resource :profile, only: [:show, :edit, :update]

  # as procreator
  namespace :procreator do
    resources :children, only: [:index, :new, :create, :destroy]

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

