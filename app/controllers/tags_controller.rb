class TagsController < ApplicationController

    before_action :load_tag, except:[:index, :create, :new]
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
      @tags = Tag.all
    end

    def new
      @tag = Tag.new
    end

    def create
      @tag = Tag.new(tag_params)

      respond_to do |format|
        if @tag.save
          format.html { redirect_to @tag, notice: 'Tag was successfully created.' }
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
        if @tag.update(tag_params)
          format.html { redirect_to @tag, notice: 'Tag was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @tag.destroy
      redirect_to(tags_path)
    end

    private
      def tag_params
        params.require(:tag).permit(:name, :description)
      end

    def load_tag
      @tag = Tag.find(params[:id])
    end
  end
