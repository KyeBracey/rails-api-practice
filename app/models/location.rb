class Location < ApplicationRecord
  validates_presence_of :name, :sizetype, :hold

  has_many :point_of_interests
end
