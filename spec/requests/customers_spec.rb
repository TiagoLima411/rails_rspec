require 'rails_helper'

RSpec.describe "Customers", type: :request do
  describe "GET /customers" do
    it "works! 200 ok" do
      get customers_path
      expect(response).to have_http_status(200)      
    end

    it "index - JSON 200 ok" do
      get '/customers.json'
      expect(response).to have_http_status(200)      
      expect(response.body).to include_json([
        id: 1,
        name: "Arie Paucek",
        email: "meu_email~1@email.com"
      ])      
    end

    it "show - JSON 200 ok" do
      get '/customers/1.json'
      expect(response).to have_http_status(200)      
      expect(response.body).to include_json(
        id: 1
      )      
    end
  end
end
