class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.where(status: "Carted", id: current_user.id)
    render json: carted_products.as_json
  end
  
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
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
