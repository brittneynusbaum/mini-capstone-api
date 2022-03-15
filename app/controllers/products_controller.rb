class ProductsController < ApplicationController
  
  def index
    product = Product.all
    render json: product.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.to_json
  end

  def create
    shoes = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )

    shoes.save
    render json: shoes.to_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.image_url = params[:image_url]
    product.description = params[:description]
    render json: product.to_json
    ## getting ActionController::RoutingError (No route matches [PATCH] "/products/5"):
    # means there was an issue with the link in requests.http
    product.save
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "test"}
  end

end