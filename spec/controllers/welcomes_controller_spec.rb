require 'spec_helper'

RSpec.describe WelcomesController, :type => :controller do

  describe 'send_email' do

    it 'should return errors if fields are blank' do
      post :send_email, { format: 'json', name: '', email: '', message: ''}
      expect(response.status).to eq(422)
      json_response = JSON.parse(response.body)
      expect(json_response['error']).to include('Name can not be blank.')
      expect(json_response['error']).to include('Email can not be blank.')
      expect(json_response['error']).to include('Message can not be blank.')
    end

    it 'should return success message' do
      post :send_email, { format: 'json', name: 'Test', email: 'test@test.com', message: 'test message'}
      expect(response.status).to eq(200)
      json_response = JSON.parse(response.body)
      expect(json_response['msg']).not_to be_empty
    end

    it 'should send message to admin' do
      post :send_email, { format: 'json', name: 'Test', email: 'test@test.com', message: 'test message'}
      expect(response.status).to eq(200)
      expect(ActionMailer::Base.deliveries.count).to eq(1)
    end
  end
end