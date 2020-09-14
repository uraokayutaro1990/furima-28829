class ItemsController < ApplicationController
  before_action :authenticate_user!
  def index 
  end

  def new
  @item=Item.new
  end

  def item_params
  params.require(:item).permit(:content, :image,name,price).merge(user_id: current_user.id)
  end

  def create
    @item = item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
  end

    private

  def item_params
    params.require(:room).permit(:name)
  end

  end
end

