User.create!([
  {name: "Test name", email: "test@test.com", password_digest: "$2a$12$vmebVg8NSnUBbjPglxZrY.MmynUGpb7.OA.wvBxUy3.xHbAG8b8CO", admin: false},
  {name: "Frodo", email: "frodo@theonering", password_digest: "$2a$12$7zptIHYrkYifI358t9Y5Q.nx.6W5S80bDB8IyiiaBdpWKUzk57REa", admin: false},
  {name: "Pippin", email: "pippin@theonering", password_digest: "$2a$12$k80ud4Z90CQ2LV1L/73VcuvJ8LqPq2xXog6iqOpajlMir0Gd9Oqgy", admin: false},
  {name: "Sam", email: "sam@theonering", password_digest: "$2a$12$XhVebuCUEvwHKKf54nfbwuHNFqyUTga45Qd.QawmONK42hlN/w9V.", admin: true},
  {name: "Luke Skywalker", email: "luke@rebelalliance.com", password_digest: "$2a$12$1pJzrJ7KEzjXWs/quYr11.6.rDccdbN0FbgY9Z0niJjq6RUPW7FUu", admin: false}
])
Supplier.create!([
  {name: "All the clothes Inc.", email: "allclothes@gmail.com", phone_number: "22222222"},
  {name: "Decor R' Us", email: "decor@rus.com", phone_number: "5555555"},
  {name: "Tech Central", email: "techcentral@gmail.com", phone_number: "3333333"}
])
Product.create!([
  {name: "Umbrella", price: "75.99", description: "For those days when you need to be ready for rain or a jedi dual.", quantity: 15, supplier_id: 1},
  {name: "Disco Ball", price: "350.0", description: "Perfect for when you're feeling groovy!", quantity: 11, supplier_id: 1},
  {name: "Bicycle", price: "37.0", description: "If you love to balance on two wheels at high speed, then this bike is perfect for you!", quantity: 19, supplier_id: 3},
  {name: "The One Ring", price: "10000.0", description: "One ring to rule them all!", quantity: 12, supplier_id: 2},
  {name: "Sting", price: "5000.0", description: "The perfect sword for all Hobbits!", quantity: 18, supplier_id: 3},
  {name: "pants", price: "20.0", description: "These pants were made for walkin!", quantity: 11, supplier_id: 2},
  {name: "Hat", price: "13.0", description: "Love IKEA and bucket hats? This is the hat for you!", quantity: 32, supplier_id: 1},
  {name: "shoes", price: "300.0", description: "These gold-plated shoes will have you walking on air!", quantity: 35, supplier_id: 1},
  {name: "water bottle", price: "25.0", description: "Our spiky water bottle will make it even harder to stay hydrated!", quantity: 33, supplier_id: 2},
  {name: "camera", price: "30.0", description: "make memories with this camera", quantity: 16, supplier_id: 2},
  {name: "Hoodie", price: "45.0", description: "If you're going for \"hacker in a movie\", look no further!", quantity: 17, supplier_id: 2},
  {name: "phone", price: "1000.99", description: "Scroll the day away on your phone and ignore all responsibilities.", quantity: 12, supplier_id: 3},
  {name: "Pizza Pool Float", price: "250.5", description: "It's a pizza pool float, need we say more?", quantity: 15, supplier_id: 2},
  {name: "T-shirt", price: "25.0", description: "Want everyone to know you're a coder without saying a\n  word? Say no more - we've got the shirt for you!", quantity: 13, supplier_id: 2}
])
Image.create!([
  {url: "https://sc04.alicdn.com/kf/HTB1rrK4A2uSBuNkHFqDq6xfhVXaA.jpg", product_id: 13},
  {url: "https://m.media-amazon.com/images/I/71hlZVUtDuL._AC_UL1500_.jpg", product_id: 11},
  {url: "https://www.hearthsong.com/medias/sys_master/images/images/hee/hb7/8799031590942/730337-HSSU16-AF2958.jpg", product_id: 8}
])
Category.create!([
  {name: "Clothing"},
  {name: "Electronics"},
  {name: "Kitchen"},
  {name: "Sporting Goods"},
  {name: "Home"},
  {name: "Hobbies"}
])
Order.create!([
  {user_id: 2, subtotal: "10.0", tax: "0.05", total: "10.05"},
  {user_id: 4, subtotal: "10.0", tax: "0.05", total: "10.05"},
  {user_id: 4, subtotal: "5004.95", tax: "0.09", total: "450.45"},
  {user_id: 4, subtotal: "30000.0", tax: "2700.0", total: "32700.0"}
])
CartedProduct.create!([
  {user_id: 4, product_id: 10, quantity: 1, status: "Carted", order_id: nil},
  {user_id: 4, product_id: 15, quantity: 3, status: "Carted", order_id: nil},
  {user_id: 4, product_id: 4, quantity: 1, status: "Carted", order_id: nil},
  {user_id: 4, product_id: 8, quantity: 1, status: "Carted", order_id: nil},
  {user_id: 4, product_id: 9, quantity: 1, status: "Carted", order_id: nil}
])
CategoryProduct.create!([
  {product_id: 3, category_id: 4},
  {product_id: 3, category_id: 6},
  {product_id: 13, category_id: 3},
  {product_id: 13, category_id: 4}
])
