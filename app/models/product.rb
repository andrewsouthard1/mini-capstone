class Product < ApplicationRecord
  def under_2
    output_message = ""
    output_message += "Discount Item" if price < 2.0
    output_message += "Everday Value!!" if price >= 2.0
    output_message
  end
end
