class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    p "events controller new"
  end

  def create
    @event = Event.new(params.require(:event).permit(:title, :contents, :image_url))
    @event.save
    redirect_to @event
  end
end
