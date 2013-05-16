# make another model for "quotes" and build the views and controller required to do CRUD on quotes
# replicate eventscontroller, just on another model

class EventsController < ApplicationController
  def index
    @events = Event.order("created_at DESC")
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event]) 
    @event.sport = params[:activity][:name]
    @event.save
    @attendee = params[:user][:id]
    @attendee.select! { |a| ! a.empty? }
    @attendee.each do |a|
      @event.users << User.find(a)
    end
    redirect_to events_path
  end

  def edit
    @event = Event.find(params[:id])
    @attendees = @event.users
  end

  def update
    @event = Event.find(params[:id])
    @event.sport = params[:activity][:name]
    @event.update_attributes(params[:event])
    redirect_to events_path
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def join
    @event = Event.find(params[:event][:event_id]).users << current_user
    redirect_to :back
  end

  def leave
    @event = Event.find(params[:event][:event_id]).users.delete(current_user)
    redirect_to :back
  end
end
