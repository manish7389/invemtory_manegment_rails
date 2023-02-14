class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    # byebug
    inventory = Inventory.find(params[:inventory_id])
    @item = inventory.items.create(item_params)
    if @item.save
      redirect_to inventory_items_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    # byebug
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to inventory_items_path
    else
      render :edit, status: :unprocessable_entity
    end
  end 

  def destroy
  end

  private
    def item_params
      params.require(:item).permit(:name, :price, :rating, :quantity)
    end
end
