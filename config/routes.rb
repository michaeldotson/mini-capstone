Rails.application.routes.draw do
  namespace :api do
  get "beachtowel" => "products#beach_towel"
  get "mensshaver" => "products#mens_shaver"
  get "liquidass" => "products#liquidass"
  end
end
