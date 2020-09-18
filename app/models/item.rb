class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one :order 
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :postage
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :delivery_time

  with_options presence: true do
    validates  :image 
    validates  :name, length: {maximum:40}
    validates  :text, length: {maximum:1000}
    validates  :price, numericality: { only_integer: true,greater_than_or_equal_to: 300, less_than: 10000000,
    message: "nothing"} 
    with_options numericality: { other_than: 0 } do
      validates  :category_id
      validates  :condition_id
      validates  :postage_id
      validates  :prefecture_id
      validates  :delivery_time_id
    end
  end
end
#文字数を数えるので、formatではなくlengthを使用する
#0も含めて

