class OrdersController < ApplicationController

  before_action :authenticate_user, only: [:create, :view]

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
    if order.user_id == current_user.id
      render json: order.as_json
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    orders = current_user.orders
    render json: orders.as_json
  end
  
end