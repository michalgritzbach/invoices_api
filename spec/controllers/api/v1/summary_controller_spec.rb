require 'rails_helper'

RSpec.describe API::V1::SummaryController, type: :controller do
  describe 'GET #months' do
    it 'should return HTTP 200 status code' do
      get(:months, format: :json)

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'should return JSON summary by months' do
      get(:months, format: :json)

      expect(response.headers['Content-Type']).to start_with('application/json')
    end
  end
end
