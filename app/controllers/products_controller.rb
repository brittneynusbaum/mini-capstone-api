class ProductsController < ApplicationController
  
  def index
    render json: Product.all.to_json
  end

  def show
    product_id = params[:id]
    bike = Product.find_by(id: product_id)
    render json: bike.to_json
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

end



# {message: "Your first product is:"}