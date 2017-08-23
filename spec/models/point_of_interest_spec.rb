require 'rails_helper'

RSpec.describe PointOfInterest, type: :model do
  it { is_expected.to be }
  it { is_expected.to belong_to(:location) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :buildingtype }
  it { should validate_presence_of :description }
end
