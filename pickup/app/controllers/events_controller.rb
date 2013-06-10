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
    @event.sport_id = Activity.where(:name => @event.sport).select('id').first.id
    @event.users << current_user
    @event.save
    sport = @event.sport
    sport_id = @event.sport_id
    starts = @event.start
    subscribers = Activity.find(sport_id).users
    send_to_subscribers = Array.new
    subscribers.each do |s|
      send_to_subscribers.push(s.mobile)
    end
    twilio_sid = "ACac6ded17686d7923cda16a0add533dfa"
    twilio_token = "ac355e41ef99e73569c8539c8afefe4d"
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
    @twilio_client.account.sms.messages.create(
      :from => '+14695027613',
      :to => send_to_subscribers,
      :body => "#{sport.downcase} is happening #{starts.to_formatted_s(:long_ordinal)}. Do you want to join? http://plymkrs.co/hv17a1/"
    )
    
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