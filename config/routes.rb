Rails.application.routes.draw do
  resources :home_appliances
  resources :headphones
  resources :laptops
  resources :televisions
  resources :cellphones
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
