Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :interest, only: [:index, :create] do
    collection do
      get "thanks"
    end
  end

  namespace :api do
    namespace :v1 do
      resources :orders, only: [:index, :show, :create, :update, :destroy] do
        resources :products, only: [:create, :update, :destroy] do
        end
        resources :payments, only: [:create, :update, :destroy] do
        end
      end
      resources :clients, only: [:create, :update, :destroy] do
      end
    end
  end
end
