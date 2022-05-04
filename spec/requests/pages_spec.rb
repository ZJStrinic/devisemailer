require 'rails_helper'

RSpec.describe "Pages", type: :request do
  
  describe "GET index page" do
    it "successfully gets main page" do
       get pages_index_url
       expect(response.status).to eq (200)
    end
  end
  describe "GET contact page" do
    it "successfully gets contact page" do
       get pages_contact_url
       expect(response.status).to eq (200)
    end
  end
  describe "GET about page" do
    it "successfully gets about page" do
       get pages_about_url
       expect(response.status).to eq (200)
    end
  end
end
