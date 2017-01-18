class EventsController < ApplicationController
  # GET /events
  def index
    if params[:event_id].present?
      @events = Event.where(event_id: params[:event_id])
    else
      @events = Event.all
    end
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /events/1
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:location, :address)
    end
end
