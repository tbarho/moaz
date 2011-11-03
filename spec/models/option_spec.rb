require 'spec_helper'

describe Option do
  before(:each) do
    @property = create(:property)

    @option = @property.options.build(:name => "Test Option", :value => "Test Value")
  end

  it "should create an instance given valid attributes" do
    @option.save!
  end

  describe "validations" do
    it "should require a name" do
      @option.name = nil
      @option.should_not be_valid
    end
    it "should require a value" do
      @option.value = nil
      @option.should_not be_valid
    end
  end
end
