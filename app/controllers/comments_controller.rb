class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    @plant = Plant.find_by(id: params[:comment][:plant_id])
    redirect_to plant_path(@plant)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :user_id, :plant_id)
  end

end
