class OrdersController < ApplicationController

  before_action :authenticate_user, only: [:create, :view]

  def create
    carted_products = CartedProduct.where(status: "Carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      if carted_product.status == "Carted"
        products = Product.find_by(id: carted_product.product_id)
        calculated_subtotal = products.price * carted_product.quantity
        carted_product.status = "Purchased"
        # carted_product.order_id = order.id
      end
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