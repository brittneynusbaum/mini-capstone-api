class ProductsController < ApplicationController
  
  def index
    render json: Product.all.to_json
  end

  def show
    product_id = params[:id]
    bike = Product.find_by(id: product_id)
    render json: bike.to_json
  end

  def create
    pants = Product.new(
      name: "pants",
      price: "20.99",
      image_url: "https://www.lafuma.com/media/catalog/product/cache/18/image/9df78eab33525d08d6e5fb8d27136e95/l/f/lfv11349-8604-pantalon-femme-access-pants-w-gris_1.jpg",
      description: "These pants were made for walkin!"
    )

    pants.save
    
    render json: pants.to_json
  end

end



# {message: "Your first product is:"}