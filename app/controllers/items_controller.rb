class ItemsController < ApplicationController

  before_action :authenticate_user!,except: :index
  def index 
    @items = Item.includes(:user).order(created_at: :DESC) # 出品している商品を取得するのに使う
    @orders = Order.all # 売り切れている商品の確認に使う

  end
  #全て取得してくる

  def new
    @item=Item.new
  end
  #新しいアイテムをインスタンス変数に代入

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else   
      render :new
    end
  end
  #出品をクリックした際に使う条件分岐
  #トップページにリダイレクトする

  def show
     @item = Item.find(params[:id])
  end
#1つだけ表示させる、クリックしたものを

    private
    #クラス内のみアクセス可能

  def item_params
    params.require(:item).permit( :image, :name , :price , :text , :postage_id, :category_id ,:condition_id , :prefecture_id , :delivery_time_id).merge(user_id: current_user.id )
  end



#paramas パラメーター
#フォームなどによって送られてきた情報（パラメーター）を取得するメソッドです。
#送られてくる情報には、「投稿フォームなどPOSTで送信されたデータ」と「検索フォームなどGETで送信されURLにクエリとして入るデータ」があります。

end



