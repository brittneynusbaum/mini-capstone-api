class CartedProduct < ApplicationRecord
  has_many :users
  has_many :product
  has_many :orders, optional: true
end
