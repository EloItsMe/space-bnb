Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :planets, only: %i[index show] do
    resources :reservations, only: [:create]
  end

  resources :reservations, only: %i[index]

  namespace :owner do
    resources :planets, only: %i[index new create]
    resources :reservations, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
