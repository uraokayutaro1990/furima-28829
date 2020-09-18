FactoryBot.define do
  factory :address do
    order_id { rand(1..100) } # 購入id
    postal_code { rand(100..999).to_s + "-" + rand(1000..9999).to_s } # 郵便番号
    prefecture { rand(1..47) } # 都道府県
    city { Faker::Address.city } # 市区町村
    addresses { Faker::Address.street_address } # 番地
    phone_number { "00000000000" } # 電話番号
    token { "tok_0000000000000000000000000000" } # トークン
  end
end
