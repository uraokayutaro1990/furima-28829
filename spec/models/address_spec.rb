require 'rails_helper'
RSpec.describe Address, type: :model do
  describe '#create' do
    before do
      @address = FactoryBot.build(:address)
    end
    it "「購入id」「郵便番号」「都道府県」「市区町村」「番地」「電話番号」「トークン」が存在すれば登録できる" do
      expect(@address).to be_valid
    end
    it "「購入id」が空では登録できない" do
      @address.order_id = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("Order can't be blank")
    end
    it "「郵便番号」が空では登録できない" do
      @address.postal_code = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("Postal code error")
    end
    it "「郵便番号」は「数字3桁-数字4桁」の形式でなければ登録できない" do
      @address.postal_code = "a00-0000"
      @address.valid?
      expect(@address.errors.full_messages).to include("Postal code error")
    end
    it "「郵便番号」は「-」を含む形式でなければ登録できない" do
      @address.postal_code = "0000000"
      @address.valid?
      expect(@address.errors.full_messages).to include("Postal code error")
    end
    it "「都道府県」が空では登録できない" do
      @address.prefecture = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("Prefecture can't be blank")
    end
    it "「市区町村」が空では登録できない" do
      @address.city = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("City can't be blank")
    end
    it "「番地」が空では登録できない" do
      @address.addresses = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("Addresses can't be blank")
    end
    it "「電話番号」は10桁以上の必要がある" do
      @address.phone_number = "000000000"
      @address.valid?
      expect(@address.errors.full_messages).to include("Phone number error")
    end
    it "「電話番号」は11桁以下の必要がある" do
      @address.phone_number = "000000000000"
      @address.valid?
      expect(@address.errors.full_messages).to include("Phone number error")
    end
    it "「電話番号」は数字のみである必要がある" do
      @address.phone_number = "000-000-0000"
      @address.valid?
      expect(@address.errors.full_messages).to include("Phone number error")
    end
    it "「トークン」が空では登録できない" do
      @address.token = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("Token can't be blank")
    end
  end
end