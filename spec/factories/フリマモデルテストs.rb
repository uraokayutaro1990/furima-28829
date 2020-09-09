FactoryBot.define do
  factory :フリマモデルテスト do
    nickname {"-------"}
    email {"-------"}
    encrypted_password {"-------"}
    family_name {"-------"}
    first_name {"-------"}
    family_name_kana {"-------"}
    first_name   {"-------"}
    family_name_kana  {"-------"}
    birthday {"-------"}
  
  end
end

#FactoryBot.define do

  #factory :モデル名 do
    #カラム名     {"仮の値"}
  #end

#end

#| Colum                   | Type     |  Options
#| ----------------------- | ------------- | ----------  |
#| nickname                | string        | null: false | 
#| email                   | string        | null: false, unique: true |
#| encrypted_password      | string        | null: false |
#| family_name             | string        | null: false |
#| first_name             | string        | null: false |
#| family_name_kana        | string        | null: false |
#| first_name              | string        | null: false |
#| family_name_kana             | string       | null: false |
#| birthday                | date          | null: false |