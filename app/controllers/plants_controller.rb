class PlantsController < ApplicationController
  wrap_parameters  format:[]
  #GET all plants
  def index 
    plants = Plant.all 
    render json: plants
  end
  #GET plant by id
  def show
    plant = Plant.find_by(id:params[:id])
    render json: plant
  end
  def create 
    plant = Plant.create(plant_params)
    render json: plant
  end

  private 
  def plant_params
    params.permit(:name,:image,:price)
    
  end
end
