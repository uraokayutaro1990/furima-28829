class Address < ApplicationRecord
  with_options presence: true do
    format_zip = /\A[0-9]{3}-[0-9]{4}\z/ # 郵便番号
    format_phone = /\A[0-9]{10,11}\z/ # 電話番号
    validates :postal_code, :format: {
         with:format_zip,
         messege:"error"
    }
    validates :prefecture ,numericality: { other_than: 0 } 
    validates :city
    validates :addresses
    validates :phone_number, :format:{
         with:format_phone,
         messege:"error"
    }

    

    end
end
