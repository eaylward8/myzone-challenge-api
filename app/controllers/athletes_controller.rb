class AthletesController < ApplicationController
  def index
    render json: Athlete.all
  end

  def show
    render json: Athlete.find(params[:id])
  end
end
