class FavoritesController < ApplicationController
  before_action :find_plant

  def create
      @current_user = User.find_by(id: session[:user_id])

    if already_favorited?
      flash[:notice] = "You won't be able to see this message."
    else
      @plantfavorite = @plant.favorites.create(user_id: @current_user.id)
    end
    redirect_to plant_path(@plant)
  end

  def destroy
      @current_user = User.find_by(id: session[:user_id])
      @plantfavorite = @plant.favorites.find_by(user_id: @current_user.id)

    if @plantfavorite != nil
      @plantfavorite.destroy
    else

    end
    redirect_to plant_path(@plant)
  end

  private

  def find_plant
    @plant = Plant.find_by(id: params[:plant_id])
  end

  def already_favorited?
    @current_user = User.find_by(id: session[:user_id])
    Favorite.where(user_id: @current_user.id, plant_id:
    params[:plant_id]).exists?
  end

end
