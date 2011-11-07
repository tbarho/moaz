require 'spec_helper'

describe Option do
  before(:each) do
    @property = create(:property)

    @option = @property.options.build(:content => "Test Option")
  end

  it "should create an instance given valid attributes" do
    @option.save!
  end

  describe "validations" do
    it "should require a proerty_id" do
      option = Option.new(:content => "Test")
      option.should_not be_valid
    end
    it "should require content" do
      @option.content = nil
      @option.should_not be_valid
    end
  end
end
