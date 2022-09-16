class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end 

  def create
    # debugger
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
    def event_params
      params.require(:event).permit(:title, :location, :body, :date)
    end
end
