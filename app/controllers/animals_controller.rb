class AnimalsController < ApplicationController

  def index
    name = params[:name]
    if name != nil
      @animals = Animal.search_name(name)
    else
      @animals = Animal.all
    end
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create(animal_params)
    json_response(@animal)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update!(animal_params)
    render status: 200, json: {
      message: "Your quote has successfully been updated."
    }

  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def animal_params
    params.permit(:breed, :name, :color, :age)
  end
end
