require 'rails_helper'
RSpec.describe Order, type: :model do
  describe '#create' do
    before do
      @order = FactoryBot.build(:order)
    end
    it "「購入id」「ユーザーid」が存在すれば登録できる" do
      expect(@order).to be_valid
    end
    it "「商品id」が空では登録できない" do
      @order.item_id = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("Item can't be blank")
    end
    it "「ユーザーid」が空では登録できない" do
      @order.user_id = nil
      @order.valid?
      expect(@order.errors.full_messages).to include("User can't be blank")
    end
  end
end
