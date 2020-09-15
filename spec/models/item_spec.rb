require 'rails_helper'

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe '商品情報を入力' do
  context '出品がうまくいくとき' do
    it "imageとname、textとが存在すれば登録できる" do
      expect(@item).to be_valid
    end
  end
end

context '情報がないと出品できない' do
  context 出品画像がなければ出品できない do
    it "画像を保存" do
      @item.image= nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
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
    it "ユーザー" do
      @item.user = nil
      @item.valid?
        expect(@item.errors.full_messages).to include("User can't be blank")
    end
  end
end
