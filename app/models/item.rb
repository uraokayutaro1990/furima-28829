class Item < ApplicationRecord

  has_one_attached :image
  has_one :donation

  with_options presence: true do
    




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

