class PlantsController < ApplicationController

  def index
    @users = User.all
    if params[:search]
      @plants = Plant.search(params[:search])
      if !Plant.find_by(name: params[:search])
        @apology = "Sorry, this plant does not yet exist"
      end
    else
      @plants = Plant.all
    end
    # @ordered_plants = @plants.plant_likes.sort_by(plant_likes.count :desc).limit(5)
     @ordered_plants = Plant.featured_plants.reverse[0..4]
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
    @current_user = User.find_by(id: session[:user_id])
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
    params.require(:plant).permit(:name, :soil, :pot_size, :temperature, :climate, :sunlight, :description, :humidity, :water, :img_url, :user_id, :search)
  end
end
