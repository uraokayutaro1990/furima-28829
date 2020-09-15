class ItemsController < ApplicationController
  before_action :authenticate_user!
  def index 
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

    private
    #クラス内のみアクセス可能

  def item_params
    params.require(:item).permit( :image, :name , :price , :text , :postage_id, :category_id ,:condition_id , :prefecture_id , :delivery_time_id).merge(user_id: current_user.id )
  end
#ここで画像を保存したいが、できていない。
# def item_params
#   params.require(:image).permit(:item, :image).merge(user_id: current_user.id)
# end
  #こっちで保存できるかも



  #paramas パラメーター
  #フォームなどによって送られてきた情報（パラメーター）を取得するメソッドです。
 #送られてくる情報には、「投稿フォームなどPOSTで送信されたデータ」と「検索フォームなどGETで送信されURLにクエリとして入るデータ」があります。

#  #def post_params
#    params.require(:post).permit(:title, :content, images_attributes: [:src]).merge(user_id: current_user.id)
#    byebug
# end
#    def set_post
#    @post = Post.find(params[:id])
#    end
# (byebug) params

# end
end
