class PlantsController < ApplicationController

  def index
    @plants = Plant.all
    @sorted_plants = @plants.sort_by(:name)
    @user = User.find(params[:id])
    @users = User.all
  end

  def show
    @plant = Plant.find(params[:id])
    @user = User.find(params[:id])
    @users = User.all
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plant_path(@plant)
    else @errors = @plant.errors.full_messages
      render :new
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant.assign_attributes(plant_params)
    if @model.save
      redirect_to plant_path(@plant)
    else
      @errors = @plant.errors.full_messages
      render :edit
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    redirect_to plant_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :soil, :pot_size, :temperature, :climate, :sunlight, :description, :humidity, :water, :img_url, :user_id)
  end
end
