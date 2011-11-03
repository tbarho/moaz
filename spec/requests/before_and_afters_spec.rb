require 'spec_helper'

describe "BeforeAndAfters" do
  describe "GET /before_and_afters" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get before_and_afters_index_path
      response.status.should be(200)
    end
  end
end
