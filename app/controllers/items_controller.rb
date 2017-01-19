class ItemsController < ApplicationController
  before_action :admin!, except: [:index, :show, :favorite, :bid]
  # GET /items
  def index
    @event = Event.find(params[:event_id])

    if params[:category].present?
      @items = @event.items.order("created_at DESC").where(category: params[:category])
    elsif params[:search].present?
      @items = @event.items.order("created_at DESC").where("category like ?", "%#{params[:search]}%")
    elsif params[:min_bid].present?
      @items = @event.items.order("min_bid DESC")
    else
      @items = @event.items
    end
  end

  # GET /items/1
  def show
    @event = Event.find(params[:event_id])

    @item = @event.items.find(params[:id])
  end

  # GET /items/new
  def new
    @event = Event.find(params[:event_id])

    @item = @event.items.new
  end

  # GET /items/1/edit
  def edit
    @event = Event.find(params[:event_id])

    @item = @event.items.find(params[:id])
  end

  def favorite
    @event = Event.find(params[:event_id])

    @item = @event.items.find(params[:id])
    if @item.favorites.where(favorite: true, user: current_user).count == 0
      @item.favorites.create(favorite: true, user: current_user)
    else
      @item.favorites.where(user: current_user).destroy_all
    end
    redirect_to event_items_path(@event)
  end

  def bid
    @event = Event.find(params[:event_id])

    @item = @event.items.find(params[:id])

    user_bid_amount = params[:bid_amount].to_i

    if @item.bids.empty? && user_bid_amount >= @item.min_bid
      @item.bids.create(bid_amount: user_bid_amount, user: current_user)
      redirect_to [@event, @item], notice: "First Bid!"
      return
    elsif @item.bids.empty? && user_bid_amount < @item.min_bid
      redirect_to [@event, @item], notice: "BID MORE!"
      return
    else
      highest_bid = @item.bids.last
      if user_bid_amount >= highest_bid.bid_amount + @item.bid_increment.to_i
        @item.bids.create(bid_amount: user_bid_amount, user: current_user)
        redirect_to [@event, @item], notice: "You Bid!"
        return
      else
        redirect_to [@event, @item], notice: "Don't be cheap!"
        return
      end
    end
    # if @item.favorites.where(favorite: true, user: current_user).count == 0
    #   @item.favorites.create(favorite: true, user: current_user)
    # else
    #   @item.favorites.where(user: current_user).destroy_all
    # end
    redirect_to event_items_path(@event)
  end

  # POST /items
  def create
    @event = Event.find(params[:event_id])

    @item = @event.items.new(item_params)

    if @item.save
      redirect_to [@event, @item], notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
    @event = Event.find(params[:event_id])

    @item = @event.items.find(params[:id])
    if @item.update(item_params)
      redirect_to [@event, @item], notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @event = Event.find(params[:event_id])

    @item = @event.items.find(params[:id])
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :description, :photo_id, :min_bid, :bid_increment, :final_bid, :category, :user_id)
    end
end
