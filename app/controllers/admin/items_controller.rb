class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  def edit
  end

  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(admin_item_params)
    if @item.save
      redirect_to admin_item_path(@item.id)
    else
      render :new
    end
  end
  
  def update
  end
end
