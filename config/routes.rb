Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bike" => "products#first_product"
  get "/body_product" => "products#any_product"
  get 
end
