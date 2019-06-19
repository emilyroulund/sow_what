class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to plant_path(@comment)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :user_id, :plant_id)
  end

end
