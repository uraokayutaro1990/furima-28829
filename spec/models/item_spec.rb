require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

describe '商品情報を入力' do
    it "全ての値が存在する時、新規登録できる" do
      expect(@item).to be_valid
    end
  end
end

context '情報がないと出品できない' do
    it "画像1枚必須" do
      @item.image= "0"
      @item.valid?
      expect(@item.errors.full_messages).to include("Image have to have one")
    end
    it "商品名" do
      @item.name = 'あa1'
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it "商品説明" do
      @item.text = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("text can't be blank")
    end
    it "カテゴリ" do
      @item.category = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end
    it "商品の状態" do
      @item.stauts = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Status can't be blank")
    end
      it "発送元の地域" do
      @item.delivaly = ""
      @item.valid?
        expect(@item.errors.full_messages).to include("Delivaly can't be blank")
    end
    it "発送までの日数" do
      @item.day = ""
      @item.valid?
        expect(@item.errors.full_messages).to include("Day can't be blank")
    end
    it "値段" do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
    it "価格が半角英数字混合出ないと登録できない" do
      @item.price = "aaa111"
      @.valitemid?
      expect(@item.errors.full_messages).to include ("Price confirmation doesn't match Price")
    end
    it "販売価格が半角英数字混合出ないと登録できない" do
      @item.Price = "aaa111"
      @item.valid?
      expect(@user.errors.full_messages).to include ("Price confirmation doesn't match Price")
    end
    it "販売価格が￥300~￥9,999,999の間であること" do
      @item.user = Number.between(from: 300 ,to: 9999999)} #=> 1968353479   
      @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
    it "ユーザー" do
      @item.user = nil
      @item.valid?
        expect(@item.errors.full_messages).to include("User can't be blank")  
    end
  end
end

#ユーザーのnilに問題がある可能性がある。