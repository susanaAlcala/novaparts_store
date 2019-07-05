Rails.application.routes.draw do
  
  devise_for :users
  get 'products/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
