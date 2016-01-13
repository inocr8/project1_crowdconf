class EventsController < ApplicationController

  before_action :load_event, except:[:index, :create, :new]
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      else
        format.html { render :new }
      end
    end
    
  end

  def show
    @comment = Comment.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
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
