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

context '情報がないと出品できない' do
    it "画像1枚必須" do
      @item.image= nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
    it "商品名" do
      @item.name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it "商品説明" do
      @item.text = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Text can't be blank")
    end
    it "カテゴリ" do
      @item.category_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end
    it "商品の状態" do
      @item.condition_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Condition can't be blank")
    end
      it "発送元の地域" do
      @item.prefecture_id = ''
      @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
    end
    it "発送までの日数" do
      @item.delivery_time_id = ''
      @item.valid?
        expect(@item.errors.full_messages).to include("Delivery time can't be blank")
    end
    it "値段" do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
    it "価格が全角数字登録できない" do
      @item.price = "１１１１１１"
      @item.valid?
      expect(@item.errors.full_messages).to include ("Price nothing")
    end
    it "販売価格が半角英数字混合だと登録できない" do
      @item.price = "aaa111"
      @item.valid?
      expect(@item.errors.full_messages).to include ("Price nothing")
    end
    it "販売価格が￥300~￥9,999,999の間であること" do
      @item.price = 200　
      @item.valid?
      expect(@item.errors.full_messages).to include("Price nothing")
    end
    it "販売価格が￥300~￥9,999,999の間であること" do
      @item.price = 10000000 
      @item.valid?
        expect(@item.errors.full_messages).to include("Price nothing")
    end
    it "ユーザー" do
      @item.user = nil
      @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")  
    end
  end
end

#ユーザーのnilに問題がある可能性がある。