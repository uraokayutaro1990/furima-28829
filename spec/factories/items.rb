FactoryBot.define do
  factory :item do    
    association :user
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