class CrowdsController < ApplicationController

    before_action :load_crowd, except:[:index, :create, :new]
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
      @crowds = Crowd.all
    end

    def new
      @crowd = Crowd.new
    end

    def create
      @crowd = Crowd.new(crowd_params)

      respond_to do |format|
        if @crowd.save
          format.html { redirect_to @crowd, notice: 'Crowd was successfully created.' }
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
        if @crowd.update(crowd_params)
          format.html { redirect_to @crowd, notice: 'Crowd was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @crowd.destroy
      redirect_to(crowds_path)
    end

    private
      def crowd_params
        params.require(:crowd).permit(:name, :group, :description, :crowd_image)
      end

    def load_crowd
      @crowd = Crowd.find(params[:id])
    end
  end
