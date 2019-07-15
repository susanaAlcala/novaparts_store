Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  resources :products do
    resources :orders, only: :create 
    resources :comments, only: :create
  end

  # resources :products do
    # resources :comments, only: :create
  # end

  resources :orders, only: :index do
    collection do
      get 'clean'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
