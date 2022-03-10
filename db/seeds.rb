# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


bike = Product.new(
  name: "Bicycle",
  price: "$109.99",
  image_url: "https://www.smart-coasting.eu/media/image/product/11590/lg/ncm-milano-max-n8c-28-mit-ruecktrittsbremse-damen-herren-trekking-e-bike-36v-16ah-576wh-weiss.jpg",
  description: "If you love to balance on two wheels at high speed, then this bike is perfect for you!"
)

bike.save