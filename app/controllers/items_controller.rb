class ItemsController < ApplicationController
  before_action :authenticate!, except: [:index, :show]
  # GET /items
  def index
    @items = Item.all.order("created_at DESC").where("category like ?", "%#{params[:search]}%")
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

  def favorite
    @item = Item.find(params[:id])
    if @item.favorites.where(favorite: true, user: current_user).count == 0
      @item.favorites.create(favorite: true, user: current_user)
    else
      @item.favorites.where(user: current_user).destroy_all
    end
    redirect_to items_path
  end

  def bid
    @item = Item.find(params[:id])

    user_bid_amount = params[:bid_amount].to_i

    if @item.bids.empty? && user_bid_amount >= @item.min_bid
      @item.bids.create(bid_amount: user_bid_amount, user: current_user)
    elsif @item.bids.empty? && user_bid_amount < @item.min_bid
      redirect_to items_path, notice: "BID MORE!"
      return
    else
      highest_bid = @item.bids.last
      if user_bid_amount >= highest_bid.bid_amount + @item.bid_increment.to_i
        @item.bids.create(bid_amount: user_bid_amount, user: current_user)
      else
        redirect_to items_path, notice: "Don't be cheap!"
        return
      end
    end
    # if @item.favorites.where(favorite: true, user: current_user).count == 0
    #   @item.favorites.create(favorite: true, user: current_user)
    # else
    #   @item.favorites.where(user: current_user).destroy_all
    # end
    redirect_to items_path
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
