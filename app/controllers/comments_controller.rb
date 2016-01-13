class CommentsController < ApplicationController

    before_action :load_comment, except:[:index, :create, :new]
    before_action :authenticate_user!
    load_and_authorize_resource

    def new
      @comment = Comment.new
    end

    def create
      current_user.comments.create(comment_params)
      redirect_to event_path(params['comment']['event_id'])
    end

    def edit
    end

    def update
      @comment.update(comment_params)
      redirect_to event_path(@comment.event)

    end

    def destroy
      event_id = @comment.event_id
      @comment.destroy
      redirect_to event_path(event_id)
    end

    private
      def comment_params
        params.require(:comment).permit(:event_id, :content)
      end

    def load_comment
      @comment = Comment.find(params[:id])
    end
  end
