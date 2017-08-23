class LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: { data: locations }, status: :ok
  end

  def show
    if location = Location.find_by_id(params[:id])
      render json: { data: location }, status: :ok
    else
      render json: { message: "Location with id #{params[:id]} does not exist" }, status: :bad_request
    end
  end
end
