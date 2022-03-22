class OrdersController < ApplicationController

  def create
    pp current_user
    product = Product.find_by(id: params[:product_id])
    order = Order.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity],
      tax: 0.09,
      total: (product.price * params[:quantity]) * 0.09
    )
    order.save 
    render json: {message: "You made a successful purchase!"}
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end

  def index
    order = Order.all
    render json: order.as_json
  end
  
end
