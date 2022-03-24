class Category < ApplicationRecord
  has_many :category_products

  def products
    products = 
  end
end


# In your Category model, 
# 1. make a products method 
# 2.returns all the products associated with that category. 
# 3.(You’ll need to loop through all the category_products and find the associated products…)
# given a category, what are all the products associate?