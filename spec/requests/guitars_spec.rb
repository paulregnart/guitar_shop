require 'rails_helper'

RSpec.describe "Guitars", :type => :request do
  describe "GET /guitars" do
    it "works! (now write some real specs)" do
      get guitars_path
      expect(response.status).to be(200)
    end
  end
end
