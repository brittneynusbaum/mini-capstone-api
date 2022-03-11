class ProductsController < ApplicationController
  
  def first_product
    bike = Product.first
    render json: bike.as_json
  end

  def any_product
    products = Product.all
    render json: products.to_json
  end
end



# {message: "Your first product is:"}