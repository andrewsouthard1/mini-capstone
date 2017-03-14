class Product < ApplicationRecord
  def under_2
    output_message = ""
    output_message += "Discount Item" if price < 2.0
    output_message += "Everday Value!!" if price >= 2.0
    output_message
  end

  def tax
    tax = (price * 0.09).truncate(2)
  end

  def total
    total = (price + tax).truncate(2)
  end
end
