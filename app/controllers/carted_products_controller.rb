class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.all
    render json: carted_products.as_json
  end
  
  def create
    carted_product = CartedProduct.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: nil
    )
    carted_product.save
    render json: carted_product.as_json
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.delete
    render json: {message: "The product was removed from your cart!"}
  end
  
end
