class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, presence: true 
  validates :name, uniqueness: true
  validates :price, presence: true 
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true 
  validates :description, length: { in: 10.. 500 }

  def is_discounted?
    if price.to_i < 10
      return true
    else
      return false
    end
  end

  def tax
    tax = (0.09 * price.to_i)
  end

  def total
    total = price.to_i + tax
  end

  
  # def categories
  #   categories = []
  #   categories.each do |p|
  #     categories << p.category_products
  #   end   
  
end
