class EventsController < ApplicationController
 def new
  @event = Event.new
 end

 def create
  @event = Event.new(params[:event])
  if @event.save
    redirect_to events_path
  else
   redirect_to "/"
  end
 end

 def index
   @events = Event.all
 end

 def show
  @event = Event.find(params[:id])
 end

end