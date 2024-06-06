require 'rails_helper'

describe "Football score combination API" do
  context 'POST /verify' do
    it 'success' do
      score_params = { score: "3x15" }
        
      post "/verify", params: score_params

      expect(response).to have_http_status(:success)
      expect(response.content_type).to include 'application/json'
      json_response = JSON.parse(response.body)
      expect(json_response["combinations"]).to eq(4)
    end
  end
end