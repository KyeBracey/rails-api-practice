class PointOfInterestsController < ApplicationController
  def index
    location = Location.find_by_id(params[:location_id])
    point_of_interests = location.point_of_interests.all
    render json: { data: point_of_interests }, status: :ok
  end
end
