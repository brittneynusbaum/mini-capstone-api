class Product < ApplicationRecord

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

end
