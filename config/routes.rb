Rails.application.routes.draw do
  namespace :api do

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "products" => "products#create"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "/suppliers" => "products#index_supplier"
  get "/suppliers/:id" => "products#show_supplier"
  post "/suppliers" => "products#create_supplier"
  patch "/suppliers/:id" => "products#update_supplier"
  delete "/suppliers/:id" => "products#destroy_supplier"

  get "/images" => "products#index_image"
  get "/images/:id" => "products#show_image"
  post "/images" => "products#create_image"
  patch "/images/:id" => "products#update_image"
  delete "/images/:id" => "products#destroy_image"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
  patch "/orders/:id" => "orders#update"


  end
end
