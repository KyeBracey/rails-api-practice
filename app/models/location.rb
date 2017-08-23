class Location < ApplicationRecord
  validates :name, :sizetype, :hold, presence: true
end
