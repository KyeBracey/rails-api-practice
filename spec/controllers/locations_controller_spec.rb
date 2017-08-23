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

  describe 'GET /:id' do
    it 'responds with 200' do
      get :show, params: { id: location1 }
      expect(response).to have_http_status(200)
    end

    it 'returns the details of one location' do
      get :show, params: { id: 2 }
      expect(JSON.parse(response.body)['data']).to eq(JSON.parse(location2.to_json))
    end

    it 'returns an error message if the location does not exist' do
      get :show, params: { id: 9999 }
      expect(response).to have_http_status(400)
      expect(JSON.parse(response.body)['message']).to eq('Location with id 9999 does not exist')
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      post :create, params: { name: 'test', sizetype: 'city', hold: 'testhold' }
      expect(response).to have_http_status(200)
    end
  end
end
