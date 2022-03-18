# Product.create!([
#   {name: "Bicycle", price: "0.0", image_url: "https://www.smart-coasting.eu/media/image/product/11590/lg/ncm-milano-max-n8c-28-mit-ruecktrittsbremse-damen-herren-trekking-e-bike-36v-16ah-576wh-weiss.jpg", description: "If you love to balance on two wheels at high speed, then this bike is perfect for you!", inventory: nil},
#   {name: "Bicycle", price: "0.0", image_url: "https://www.smart-coasting.eu/media/image/product/11590/lg/ncm-milano-max-n8c-28-mit-ruecktrittsbremse-damen-herren-trekking-e-bike-36v-16ah-576wh-weiss.jpg", description: "If you love to balance on two wheels at high speed, then this bike is perfect for you!", inventory: nil},
#   {name: "T-shirt", price: "25.0", image_url: "https://i.etsystatic.com/20863131/r/il\n  /917fad/2075104115/il_fullxfull.2075104115_r9c2.jpg", description: "Want everyone to know you're a coder without saying a\n  word? Say no more - we've got the shirt for you!", inventory: nil},
#   {name: "pants", price: "20.0", image_url: "https://www.lafuma.com/media/catalog/product/cache/18/image/9df78eab33525d08d6e5fb8d27136e95/l/f/lfv11349-8604-pantalon-femme-access-pants-w-gris_1.jpg", description: "These pants were made for walkin!", inventory: nil},
#   {name: "shoes", price: "300.0", image_url: "https://www.expensive-world.com/wp-content/uploads/2020/07/expensive-shoes.jpg", description: "These gold-plated shoes will have you walking on air!", inventory: nil},
#   {name: "shoes", price: "300.0", image_url: "https://www.expensive-world.com/wp-content/uploads/2020/07/expensive-shoes.jpg", description: "These gold-plated shoes will have you walking on air!", inventory: nil},
#   {name: "shoes", price: "300.0", image_url: "https://www.expensive-world.com/wp-content/uploads/2020/07/expensive-shoes.jpg", description: "These gold-plated shoes will have you walking on air!", inventory: nil},
#   {name: "Hat", price: "13.0", image_url: "https://www.ikea.com/us/en/images/products/knorva-hat-blue__0812162_pe771942_s5.jpg", description: "Love IKEA and bucket hats? This is the hat for you!", inventory: nil},
#   {name: "shoes", price: "300.0", image_url: "https://www.expensive-world.com/wp-content/uploads/2020/07/expensive-shoes.jpg", description: "These gold-plated shoes will have you walking on air!", inventory: nil},
#   {name: "water bottle", price: "25.0", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cute-waterbottles-1592501461.jpg?crop=0.484xw:0.962xh;0.513xw,0.0382xh&resize=640:*", description: "Our spiky water bottle will make it even harder to stay hydrated!", inventory: nil},
#   {name: "Hoodie", price: "37.0", image_url: "https://m.media-amazon.com/images/I/71hlZVUtDuL._AC_UL1500_.jpg", description: "If you're going for \"hacker in a movie\", look no further!", inventory: nil}
# ])

products = Product.where(supplier_id: 0)

products.each do |product|
  product.supplier_id = rand(1..3)
  product.save
end