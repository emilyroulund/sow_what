class CommentUpvotesController < ApplicationController
  before_action :find_comment, :find_plant

  def create
      @current_user = User.find_by(id: session[:user_id])

    if already_upvoted?
      flash[:notice] = "You already liked this comment."
    else
      @comment_upvote = @comment.comment_upvotes.create(user_id: @current_user.id)
    end
    redirect_to plant_path(@plant)
  end

  def destroy
      @current_user = User.find_by(id: session[:user_id])
      @comment_upvote = @comment.comment_upvotes.find_by(user_id: @current_user.id)

    if @comment_upvote != nil
      @comment_upvote.destroy
    else

    end
    redirect_to plant_path(@plant)
  end

  private

  def find_plant
    @plant = Plant.find_by(id: @comment.plant.id)
  end

  def find_comment
    @comment = Comment.find_by(id: params[:comment_id])
  end


  def already_upvoted?
    @current_user = User.find_by(id: session[:user_id])
    CommentUpvote.where(user_id: @current_user.id, comment_id:
    params[:comment_id]).exists?
  end
end
