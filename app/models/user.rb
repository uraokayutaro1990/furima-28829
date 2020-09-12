class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #has_many :items
  #has_many :buyer_items 
  #belongs_to :user 
  #has_one :buyer_item 
  #belongs_to :user 
  #belongs_to :item
  #has_one :deliver_address
  #belongs_to :buyer_item

 with_options presence: true do
   zyoukenn1 = /\A[ぁ-んァ-ン一-龥]/
   validates :family_name, format: { with: zyoukenn1, message: "は全角で入力してください。"}
   validates :first_name, format: { with: zyoukenn1, message: "は全角で入力してください。"}
   zyoukenn2 = /\A[ァ-ヶー－]+\z/
   validates :family_name_kana, format: { with: zyoukenn2, message: "は全角カタカナで入力して下さい。"}
   validates :first_name_kana, format:  { with: zyoukenn2, message: "は全角カタカナで入力して下さい。"}
   validates :nickname           
   validates :birthday          
   validates :password,         fomat:  { with:/\A[a-z\d]{6,100}+\z/i}

   

 end

end

