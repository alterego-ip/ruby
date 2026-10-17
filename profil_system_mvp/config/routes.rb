Rails.application.routes.draw do
  root "products#index"

  resources :products, only: [:index, :show]
  resources :cart_items, only: [:index, :create, :destroy]
  resources :measurement_requests, only: [:new, :create]

  get  "configurator", to: "configurators#show"
  post "configurator/calculate", to: "configurators#calculate"
  post "configurator/add_to_cart", to: "configurators#add_to_cart"
end