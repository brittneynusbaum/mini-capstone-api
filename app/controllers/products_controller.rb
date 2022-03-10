class ProductsController < ApplicationController
  
  def first_product
    bike = Product.first
    render json: bike.as_json
  end
end



# {message: "Your first product is:"}