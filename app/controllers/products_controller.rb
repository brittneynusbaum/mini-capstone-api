class ProductsController < ApplicationController
  
  def index
    render json: Product.all.to_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.to_json
  end

  def create
    shoes = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description]
    )

    shoes.save
    
    render json: shoes.to_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:input_name]
    product.price = params[:input_price]
    product.image_url = params[:input_image_url]
    product.description = params[:input_description]
    render json: product.to_json
    ## getting ActionController::RoutingError (No route matches [PATCH] "/products/5"):
    # means there was an issue with the link in requests.http
    product.save
  end

end



# {message: "Your first product is:"}