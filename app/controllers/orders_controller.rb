class OrdersController < ApplicationController

  def create
    calculated_subtotal = product.price * params[:quantity]
    calculated_tax = calculated_subtotal * 0.09
    product = Product.find_by(id: params[:product_id])
    order = Order.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax
    )
    order.save 
    render json: order.as_json
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end

  def index
    if current_user
      order = 
      render json: order.as_json
    else
      render json: {message: "Unauthorized user"}
    end
  end
  
end