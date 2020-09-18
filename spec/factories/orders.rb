    FactoryBot.define do
      factory :order do
        user_id { rand(1..1000) } # ユーザーid
        item_id { rand(1..1000) } # 商品id
      end
    end
