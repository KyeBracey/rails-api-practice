class PointOfInterest < ApplicationRecord
  belongs_to :location

  validates_presence_of :name, :buildingtype, :description
end
