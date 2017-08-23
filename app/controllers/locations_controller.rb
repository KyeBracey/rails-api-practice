class LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: { data: locations }, status: :ok
  end

  def show
    location = Location.find(params[:id])
    render json: { data: location }, status: :ok
  end
end
