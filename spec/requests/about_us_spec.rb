require 'spec_helper'

describe "AboutUs" do
  describe "GET /about_us" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get about_us_index_path
      response.status.should be(200)
    end
  end
end
