class PlantLikesController < ApplicationController
  before_action :find_plant

  def create
    @current_user = User.find_by(id: session[:user_id])
    @plant.plant_likes.create(user_id: @current_user.id)
    redirect_to plant_path(@plant)
  end

  private

  def find_plant
    @plantlike = Plant.find_by(id: params[:plant_id])
  end

end
