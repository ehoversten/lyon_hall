class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def show
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: "Successfully created new menu item!"
    else
      render 'new'
    end
  end

  def update
    if @item.update(item_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @item.destroy
    redirect_to root_path, notice: "Successfully deleted menu item"
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :price, :description, :allergy, :image)
  end


end
