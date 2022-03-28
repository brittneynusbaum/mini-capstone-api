class OrdersController < ApplicationController

  before_action :authenticate_user, only: [:create, :view]

  def create
    carted_products = CartedProduct.find_by(status: "Carted")
    products = Product.find_by(id: carted_products.product_id)
    products.each do |product|
      calculated_subtotal = product.price * carted_product.quantity
    end
    calculated_tax = calculated_subtotal * 0.09
    
    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax
    )
    # order.save 
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