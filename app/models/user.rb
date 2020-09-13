class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 with_options presence: true do
   zyoukenn1 = /\A[ぁ-んァ-ン一-龥a-zA-Z0-9]+\z/
   validates :family_name, format: { with: zyoukenn1, message: "は全角で入力してください。"}
   validates :first_name, format: { with: zyoukenn1, message: "は全角で入力してください。"}
   zyoukenn2 = /\A[ァ-ヶー－]+\z/
   validates :family_name_kana, format: { with: zyoukenn2, message: "は全角カタカナで入力して下さい。"}
   validates :first_name_kana, format:  { with: zyoukenn2, message: "は全角カタカナで入力して下さい。"}
   validates :name           
   validates :birthday          
   validates :password,        format:  { with:/\A[a-z\d]{6,100}+\z/i}

   
   validates  :price,  presence: true, format: {with: VALID_PRICEL_HALF}, numericality: { only_integer: true,
   greater_than: 300, less_than: 10000000
   }

end

end

