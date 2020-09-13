FactoryBot.define do
  factory :user do
   name {Faker::Lorem.sentence}
   email {Faker::Internet.email }
   password  {Faker::Lorem.sentence}
   password_confirmation  {password}
   family_name {"山田"}
   first_name {"太郎"}
   family_name_kana {"ヤマダ"}
   first_name_kana {"タロウ"}
   birthday {"1995-04-01"}
  end
end




  