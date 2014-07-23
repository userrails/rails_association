class ItemsController < ApplicationController
  def new
    @item = Item.new
    @categories = Category.all
  end
  
  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to items_path
    else
      render :action => "new"
    end
  end
  
  def index
    @categories = Category.all
    @item = Item.first
  end
  
end