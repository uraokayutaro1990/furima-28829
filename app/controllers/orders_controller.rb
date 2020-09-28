class OrdersController < ApplicationController
  before_action :authenticate_user!,only: [:index]
  before_action  :set_item,only: [:index,:create] 
  def index
    @order = Order.new
    @address = Address.new 
  end 

  def create 
    buy_params = { 
      item_id: order_params[:item_id],
      user_id: order_params[:user_id]
    }
    @order = Order.new(buy_params)
    address_params = {
      postal_code: order_params[:postal_code],
      prefecture: order_params[:prefecture_id],
      city:order_params[:city],
      addresses: order_params[:addresses],
      building: order_params[:building],
      phone_number: order_params[:phone_number],
      token: order_params[:token],
      order_id: 0
    }
    @address = Address.new(address_params)
    if @address.valid?
       pay_item
       @order.save
       @address.order_id = @order.id
       binding.pry
       #@oder.idに@order.saveしたものが保存される
       #@order = Order.new(buy_params)で取得したもの
       # buy_params = { から情報をもらってきた
       # item_id: order_params[:item_id],
       # user_id: order_params[:user_id]
       @address.save
      return redirect_to root_path
    else
       render 'orders/index'
    end
  end

private

def order_params
  params.permit(:price, :token,:item_id , :authenticity_token, :postal_code, :prefecture_id, :city, :addresses, :building, :phone_number ).merge(user_id: current_user.id )
end

def set_item 
  @item = Item.find(params[:item_id])
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