class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end 

  # def create
  #   @event = current_user.build_event(event_params)

  #   if @event.save
  #     redirect_to @event
  #   else
  #     # render :new, status: :unprocessable_entity
  #   end
  # end
end
