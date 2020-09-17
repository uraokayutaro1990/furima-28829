class Order < ApplicationRecord
  attr_accessor :token 
  validates :token, presence: true
  pay_item
  @order.save
  return redirect_to root_path
else
  render 'index'
end
end
end
