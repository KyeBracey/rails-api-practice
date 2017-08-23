class LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: { data: locations }, status: :ok
  end

  def show
    render json: {}, status: :ok
  end
end
