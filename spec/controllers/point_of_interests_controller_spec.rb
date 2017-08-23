require 'rails_helper'

RSpec.describe PointOfInterestsController, type: :controller do
  let!(:location1) { Location.create(name: 'test', sizetype: 'city', hold: 'testhold') }
  let!(:point_of_interest1) { PointOfInterest.create(name: 'Abandoned House', buildingtype: 'house', description: 'Full of cobwebs') }
  let!(:point_of_interest2) { PointOfInterest.create(name: "The Hag's Cure", buildingtype: 'shop', description: 'Alchemical store') }

  describe 'GET /' do
    it 'responds with 200' do
      get :index, params: { location_id: 1 }
      expect(response).to have_http_status(200)
    end
  end
end
