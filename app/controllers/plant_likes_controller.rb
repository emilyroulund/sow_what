class PlantLikesController < ApplicationController
  before_action :find_plant

  def create
      @current_user = User.find_by(id: session[:user_id])

    if already_liked?
      @this_is_liked = true
      flash[:notice] = "You already liked this plant."
    else
      @this_is_liked = false
      @plantlike = @plant.plant_likes.create(user_id: @current_user.id)
    end
    redirect_to plant_path(@plant)
  end

  def destroy
      @current_user = User.find_by(id: session[:user_id])
      @plantlike = @plant.plant_likes.find_by(user_id: @current_user.id)

    if @plantlike != nil
      @plantlike.destroy
    else

    end
    redirect_to plant_path(@plant)
  end

  private

  def find_plant
    @plant = Plant.find_by(id: params[:plant_id])
  end

  def already_liked?
    @current_user = User.find_by(id: session[:user_id])
    PlantLike.where(user_id: @current_user.id, plant_id:
    params[:plant_id]).exists?
  end


  # <% pre_like = @post.likes.find { |like| like.user_id == current_user.id} %>
  # <% if pre_like %>
  #   <%= button_to 'Unlike', post_like_path(@post, pre_like), method: :delete %>
  # <% else %>
  #   <%= button_to 'Like', post_likes_path(@post), method: :post %>
  # <% end %>

end
