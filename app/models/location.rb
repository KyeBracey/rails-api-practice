class Location < ApplicationRecord
  validates_presence_of :name, :sizetype, :hold
end
