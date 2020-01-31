class AnimalsController < ApplicationController

  def index
    @animals = {"dog"}
    json_response(@animals)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
