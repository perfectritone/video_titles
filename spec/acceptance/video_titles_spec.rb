require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Video Titles' do

  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'

  get '/videos/:id/title' do

    parameter :id, "ID of the video"

    let(:id) { 7 }

    example_request "The title returned comes from the external source" do
      expect(response_status).to eq 200
    end
  end
end

