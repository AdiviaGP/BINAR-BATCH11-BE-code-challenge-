Rails.application.routes.draw do
  resources :rents
  resources :categories
  resources :brands
  resources :cars
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
