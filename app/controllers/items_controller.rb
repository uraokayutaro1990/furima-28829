class ItemsController < ApplicationController
  before_action :authenticate_user!
  def index 
    @item = Item.new
  end
end
