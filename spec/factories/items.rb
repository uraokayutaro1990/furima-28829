FactoryBot.define do
  factory :item do    
    association :user
      image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/files/test.png'), 'image/png') }
      name  {Faker::Lorem.sentence}           
      price {Faker::Number.between(from: 300 ,to: 9999999)} #=> 1968353479            
      text  {Faker::Lorem.sentence} 
      category_id {2}      
      condition_id {2}   
      postage_id {1}     
      prefecture_id {1}    
      delivery_time_id {1}
  end
end
#アイテムがしっかり活用できるかフェイカーで作成したもので、単体テストコードでなんとかなる。
#アソシエーションで作成したユーザーと紐付ける
# #=>の意味とは！？
