class Item < ApplicationRecord

  has_one_attached :image
  with_options presence: true do
    validates  :image 
    # validates  :name, format: {with: maxinum:40}
    # validates  :text,   format: {with: maxinum:1000}
    validates  :name, length: {maximum:40}
    validates  :text,   length: {maximum:1000}
    validates  :category 
    validates  :condition
    validates  :postage 
    validates  :prefecture 
    validates  :delivery_time
    validates  :price, numericality: {with: /\A[0-9]+\z/},length: {minimum: 3, maxinum: 7},numericality: { only_integer: true,greater_than: 300, less_than: 10000000}
  end
end

# Image can't be blank
# Name can't be blank
# Info can't be blank 
# Price can't be blank
# Price Half-width number
# Price Out of setting range
# Category Select
# Sales status Select
# Shipping fee status Select
# Prefecture Select
# Scheduled delivery Select

