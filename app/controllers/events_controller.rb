class EventsController < ApplicationController

  before_action :load_event, except:[:index, :create, :new]
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @events = Event.all
  end

  def create
    current_user.events.create(event_params)
    redirect_to events_path
  end

  def show
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to events_path
  end

  def new
    @event = Event.new
  end

  def destroy
    @event.destroy
    redirect_to(events_path)
  end

  # def self.next
  #   upcoming.first
  # end

  private
    def event_params
      params.require(:event).permit(:name, :short, :description, :event_image, :speaker_id, :crowd_id, :venue_id, :tag_id)
    end

  def load_event
    @event = Event.find(params[:id])
  end
end
