Rails.application.routes.draw do
  namespace :api do
  get "beachtowel" => "products#beach_towel"
  get "mensshaver" => "products#mens_shaver"
  get "liquidass" => "products#liquidass"
  get "all_products" => "products#all_products"
  end
end
