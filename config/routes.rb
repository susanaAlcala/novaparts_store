Rails.application.routes.draw do
  devise_for :users
  
  resources :products, only: [:index,:show] do
    resources :orders, only: :create
  end

  get 'orders/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
