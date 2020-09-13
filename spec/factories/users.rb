FactoryBot.define do
  factory :user do
    nickname {Faker::Lorem.sentence}
    email {Faker::Lorem.sentence}
   password  {Faker::Lorem.sentence}
   name  {Faker::Lorem.sentence}
   save  {Faker::Lorem.sentence}
   password_confirmation  {Faker::Lorem.sentence}
   family_name {Faker::Lorem.sentence}
   first_name {Faker::Lorem.sentence}
   family_name_kana {Faker::Lorem.sentence}
   first_name_kana {Faker::Lorem.sentence}
   birthday
    
  end
end




  