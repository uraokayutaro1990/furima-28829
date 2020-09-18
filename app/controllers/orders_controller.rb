class OrdersController < ApplicationController
  before_action :authenticate_user!,only: [:index]
  def index
    @item = Item.find(params[:item_id])
    @order = Order.new
    @address = Address.new
  end 

  def create 
    @item = Item.find(params[:item_id])
    @order = Order.new(order_params)
    @address = Address.new(order_params)
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
  params.permit(:token,:item_id ).merge(user_id: current_user.id )
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


def order_params
  params.permit(:price, :token)
end


#orders テーブルのレコードに必要な情報は「商品」と「購入者」である。
#購入するのページに飛べるように,index.ok
#アカウントをもう一つ作って確認
#購入ページにはいけた
#ログインユーザーのみ 購入ページにアクセスできる設定にする。