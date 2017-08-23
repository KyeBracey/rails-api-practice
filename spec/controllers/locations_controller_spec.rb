require 'rails_helper'

RSpec.describe LocationsController, type: :controller do

  let!(:location1) { Location.create(name: 'test1', hold: 'testhold', sizetype: 'testsize') }
  let!(:location2) { Location.create(name: 'test2', hold: 'testhold', sizetype: 'testsize') }

  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end

    it 'returns the details of all locations' do
      get :index
      expect(JSON.parse(response.body)['data']).to eq([JSON.parse(location1.to_json), JSON.parse(location2.to_json)])
    end
  end
end
