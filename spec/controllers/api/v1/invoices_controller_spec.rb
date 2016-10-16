require 'rails_helper'

RSpec.describe API::V1::InvoicesController, type: :controller do
  describe 'GET #index' do
    it 'should return HTTP 200 status code' do
      get(:index)
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'should return JSON list of invoices' do
      get(:index)

      # expect(response).to
    end
  end
end
