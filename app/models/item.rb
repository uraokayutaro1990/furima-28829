class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  #これで画像が保存できるはず。
  with_options presence: true do
    validates  :image 
    validates  :name, length: {maximum:40}
    validates  :text, length: {maximum:1000}
    validates  :price, numericality: {with: /\A[0-9]+\z/},length: {minimum: 3, maxinum: 7},numericality: { only_integer: true,greater_than_or_equal_: 300, less_than: 10000000}
    with_options numericality: { other_than: 0 } do
      validates  :category_id
      validates  :condition_id
      validates  :postage_id
      validates  :prefecture_id
      validates  :delivery_time_id
    end
  end
end

