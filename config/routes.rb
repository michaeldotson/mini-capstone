Rails.application.routes.draw do
  namespace :api do

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "products" => "products#create"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "/suppliers" => "products#index"
  get "/suppliers/:id" => "products#show"
  post "/suppliers" => "products#create"
  patch "/suppliers/:id" => "products#update"
  delete "/suppliers/:id" => "products#destroy"

  get "/images" => "products#index"
  get "/images/:id" => "products#show"
  post "/images" => "products#create"
  patch "/images/:id" => "products#update"
  delete "/images/:id" => "products#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  
  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
  

  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"
  delete "/carted_products/:id" => "carted_products#destroy"
  end

  get "/products" => "products#index"
  get "/products/new" => "products#new" #new has to be before show route
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update" 
  delete "/products/:id" => "products#destroy"

end
