require 'rails_helper'

RSpec.describe PointOfInterest, type: :model do
  it { is_expected.to be }
  it { is_expected.to belong_to(:location) }
end
