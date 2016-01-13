class SpeakersController < ApplicationController

    before_action :load_speaker, except:[:index, :create, :new]
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
      @speakers = Speaker.all
    end

    def new
      @speaker = Speaker.new
    end

    def create
      @speaker = Speaker.new(speaker_params)

      respond_to do |format|
        if @speaker.save
          format.html { redirect_to @speaker, notice: 'Speaker was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def show
    end

    def edit
    end

    def update
      respond_to do |format|
        if @speaker.update(speaker_params)
          format.html { redirect_to @speaker, notice: 'Speaker was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @speaker.destroy
      redirect_to(speakers_path)
    end

    private
      def speaker_params
        params.require(:speaker).permit(:name, :email, :twitter, :company, :speaker_image)
      end

    def load_speaker
      @speaker = Speaker.find(params[:id])
    end
  end

