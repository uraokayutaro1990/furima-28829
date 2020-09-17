class OrdersController < ApplicationController
  before_action :authenticate_user!,only: [:index]
  def index
    @item = Item.find(params[:item_id])
  end 

  def create
    @order = Order.new(order_params[:user_id,:item_id])
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

private

def order_params
  params.permit( :token :item_id ) marge (:user_id )
end

end

#orders テーブルのレコードに必要な情報は「商品」と「購入者」である。
#購入するのページに飛べるように,index.ok
#アカウントをもう一つ作って確認
#購入ページにはいけた
#ログインユーザーのみ 購入ページにアクセスできる設定にする。