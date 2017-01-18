class ItemsController < ApplicationController

  # GET /items
  def index
    if params[:category].present?
      @items = Item.all.order("created_at DESC").where(category: params[:category])
    elsif params[:search].present?
      @items = Item.all.order("created_at DESC").where("category like ?", "%#{params[:search]}%")
    elsif params[:min_bid].present?
      @items = Item.all.order("min_bid DESC")
    else
      @items = Item.all
    end
  end

  # GET /items/1
  def show
    @item = Item.find(params[:id])
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :description, :photo_id, :min_bid, :bid_increment, :final_bid, :category, :user_id)
    end
end
