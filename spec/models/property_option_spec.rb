require 'spec_helper'

describe PropertyOption do
  before(:each) do
    @property = Factory(:property)
    @option = @property.options.build(:name => "Garages", :value => "2")
  end
  it "should create an intance given valid attributes" do
    @option.save!
  end
  
  describe "validations" do
    it "should require a property_id" do
      @option.property_id = nil
      @option.should_not be_valid
    end
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
