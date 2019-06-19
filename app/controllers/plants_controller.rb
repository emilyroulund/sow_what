class PlantsController < ApplicationController

  def index
    @plants = Plant.all
    @users = User.all
    @user = @plants.each do |plant|
      plant.user.name
    end
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    @users = User.all
    @current_user = User.find_by(id: session[:user_id])
    @hidden_plant = Plant.find_by(id: params[:id])
    @comment = Comment.new
  end

  def new
    @plant = Plant.new
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
    if @plant.save
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
