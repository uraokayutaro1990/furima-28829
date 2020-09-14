class Item < ApplicationRecord

  has_one_attached :image
  with_options presence: true do
    

      
      zyouken3 =                 /\A[0-9]+\z/
      
      validates  :
      validates  :name,  presence: true, format: {with: maxinum: 40},
      validates  :text,  presence: true format: {with: maxinum: 1000},
      validates  :category,  presence: true
      validates  :condition,  presence: true
      validates  :postage,  presence: true
      validates  :prefecture,  presence: true
      validates  :delivery_time,  presence: true
  

      validates  :price,  presence: true, format: {with: zyouuken3},length: {minimum: 3, maxinum: 7},numericality: { only_integer: true,
        greater_than: 300, less_than: 10000000
      }


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

