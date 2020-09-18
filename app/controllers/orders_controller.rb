class OrdersController < ApplicationController
  before_action :authenticate_user!,only: [:index]
  def index
    @item = Item.find(params[:item_id])
    @order = Order.new
    @address = Address.new 
  end 

  def create 
    @item = Item.find(params[:item_id])
    @address_params = {
      postal_code: order_params[:postal_code],
      prefecture_id: order_params[:prefecture_id],
      ctiy:order_params[:city],
      addresses: order_params[:address],
      building: order_params[:building],
      phone_number: order_params[:phone_number] 
    }
    @order = Order.new(order_params)
    @address = Address.new(order_params)
    binding.pry
    if @order.valid?
       pay_item
       @order.save
       @address.save
      return redirect_to root_path
    else
       render 'index'
    end
  end


private

def order_params
  params.permit(:price, :token,:item_id , :authenticity_token, :postal_code, :prefecture_id, :ctiy, :addresses, :building, :phone_number ).merge(user_id: current_user.id )
end

def pay_item

  Payjp.api_key = "sk_test_7ecfd640f6a7c2d7a07a46fe"
  Payjp::Charge.create(
    amount: @item.price,
    card: order_params[:token],
    currency:'jpy'
  )
end
end
#orders テーブルのレコードに必要な情報は「商品」と「購入者」である。
#購入するのページに飛べるように,index.ok
#アカウントをもう一つ作って確認
#購入ページにはいけた
#ログインユーザーのみ 購入ページにアクセスできる設定にする。