class LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: { data: locations }, status: :ok
  end
end
