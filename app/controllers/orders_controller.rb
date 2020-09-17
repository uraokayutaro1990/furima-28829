class OrdersController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
  end 
end

#orders テーブルのレコードに必要な情報は「商品」と「購入者」である。
#購入するのページに飛べるように,index.ok
#アカウントをもう一つ作って確認
