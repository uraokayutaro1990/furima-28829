class OrdersController < ApplicationController
  def buy
    @item = Item.find(params[:])

  end 
end

orders テーブルのレコードに必要な情報は「商品」と「購入者」である。