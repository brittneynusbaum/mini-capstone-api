class ProductsController < ApplicationController
  def view
    render json: {message: "testing"}
  end
end
