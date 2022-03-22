class OrdersController < ApplicationController

  def create
    order = Order.new(
      
    )
    render json: {message: "testing order create"}
  end

  def show
    render json: {message: "testing order show"} 
  end

  def index
    render json: {message: "testing order index"} 
  end
  
end
