require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :breed => 'test_content' }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_content')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
